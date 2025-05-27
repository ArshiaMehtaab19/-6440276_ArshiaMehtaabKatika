import java.util.*;
import java.util.stream.*;
record Person(String name, int age) {}
public class RecordExample {
    public static void main(String[] args) {
        List<Person> people = List.of(
            new Person("Alice", 25),
            new Person("Bob", 30),
            new Person("Charlie", 22)
        );
        people.stream()
              .filter(p -> p.age() > 23)
              .forEach(System.out::println);
    }
}