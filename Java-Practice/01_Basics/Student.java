package myfirstprograme;

public class Student {

    static void displayDetails() {
        String name = "Ganesh";
        byte age = 22;
        int rollNumber = 10;
        float cgpa = 9.0f;

        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
        System.out.println("Roll Number: " + rollNumber);
        System.out.println("CGPA: " + cgpa);
    }

    public static void main(String[] args) {
        displayDetails();
    }
}
