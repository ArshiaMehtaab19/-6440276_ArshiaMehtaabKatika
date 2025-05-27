public class OperatorPrecedence {
    public static void main(String[] args) {
        int result = 10 + 5 * 2;  // multiplication first, then addition
        System.out.println("Result of 10 + 5 * 2 = " + result);

        int result2 = (10 + 5) * 2;  // parentheses change the order
        System.out.println("Result of (10 + 5) * 2 = " + result2);

        int result3 = 100 / 5 + 3 * 2 - 1;
        System.out.println("Result of 100 / 5 + 3 * 2 - 1 = " + result3);

        // Explanation:
        // In Java, *, /, % have higher precedence than + and -
        // Operators with the same precedence are evaluated left to right.
    }
}

