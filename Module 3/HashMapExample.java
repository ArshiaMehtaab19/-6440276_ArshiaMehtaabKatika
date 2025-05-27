import java.util.*;

public class HashMapExample {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        HashMap<Integer, String> studentMap = new HashMap<>();

        System.out.println("Enter student ID and name (type -1 to stop):");
        while (true) {
            System.out.print("ID: ");
            int id = sc.nextInt();
            sc.nextLine(); // consume newline
            if (id == -1) break;
            System.out.print("Name: ");
            String name = sc.nextLine();
            studentMap.put(id, name);
        }

        System.out.print("\nEnter ID to search: ");
        int searchId = sc.nextInt();
        String result = studentMap.get(searchId);
        if (result != null) {
            System.out.println("Name: " + result);
        } else {
            System.out.println("Student not found.");
        }
        sc.close();
    }
}
