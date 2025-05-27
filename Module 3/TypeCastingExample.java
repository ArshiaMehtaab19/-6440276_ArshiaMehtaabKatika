public class TypeCastingExample {
    public static void main(String[] args) {
        double myDouble = 9.78;
        int myInt = (int) myDouble;  // casting double to int

        System.out.println("Double value: " + myDouble);
        System.out.println("After casting to int: " + myInt);

        int anotherInt = 42;
        double anotherDouble = (double) anotherInt;  // casting int to double

        System.out.println("Int value: " + anotherInt);
        System.out.println("After casting to double: " + anotherDouble);
    }
}
