namespace AdvanceEshop.Models
{
    public class YourTitleHelperMethod
    {
        public static string YourTitleHelper(string input)
        {
            // Kiểm tra xem đầu vào có rỗng hay không
            if (string.IsNullOrEmpty(input))
            {
                return string.Empty;
            }

            // Chuyển đổi chuỗi thành chữ thường và loại bỏ dấu tiếng Việt
            string normalizedString = RemoveVietnameseSigns(input.ToLower());

            // Loại bỏ các ký tự đặc biệt và khoảng trắng
            string cleanedString = new string(normalizedString
                .Where(c => Char.IsLetterOrDigit(c) || Char.IsWhiteSpace(c))
                .ToArray());

            // Thay thế khoảng trắng bằng dấu gạch ngang
            cleanedString = cleanedString.Replace(" ", "-");

            // Loại bỏ các dấu gạch ngang liên tiếp
            cleanedString = System.Text.RegularExpressions.Regex.Replace(cleanedString, @"-+", "-");

            // Loại bỏ các dấu gạch ngang ở đầu và cuối chuỗi
            cleanedString = cleanedString.Trim('-');

            return cleanedString;
        }

        private static string RemoveVietnameseSigns(string str)
        {
            // Dùng bảng chữ cái không dấu để loại bỏ dấu tiếng Việt
            string[] signs = new string[] { "aAeEoOuUiIdDyY", "áàạảãâấầậẩẫăắằặẳẵ", "éèẹẻẽêếềệểễ", "óòọỏõôốồộổỗơớờợởỡ", "úùụủũưứừựửữ", "íìịỉĩ", "đĐ", "ýỳỵỷỹ" };

            for (int i = 1; i < signs.Length; i++)
            {
                for (int j = 0; j < signs[i].Length; j++)
                {
                    str = str.Replace(signs[i][j], signs[0][i - 1]);
                }
            }

            return str;
        }


    }
}
