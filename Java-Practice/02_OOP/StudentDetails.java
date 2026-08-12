public class StudentDetails {

    private String name;
    private int age;
    private int rollNumber;
    private double cgpa;

    public StudentDetails(String name, int age, int rollNumber, double cgpa) {
        this.name = name;
        this.age = age;
        this.rollNumber = rollNumber;
        this.cgpa = cgpa;
    }

    public void displayDetails() {
        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
        System.out.println("Roll Number: " + rollNumber);
        System.out.println("CGPA: " + cgpa);
    }

    public static void main(String[] args) {
        StudentDetails s1 = new StudentDetails("Ganesh", 22, 10, 9.0);
        StudentDetails s2 = new StudentDetails("Priya", 21, 11, 8.7);

        s1.displayDetails();
        System.out.println();
        s2.displayDetails();
    }
}
