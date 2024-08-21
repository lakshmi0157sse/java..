import java.util.Scanner;

public class PascalsTriangle {

    public static void main(String[] args) {
   
        Scanner scanner = new Scanner(System.in);
        
        
        System.out.print("Enter the number of rows for Pascal's Triangle: ");
        int numRows = scanner.nextInt();
        
        generatePascalsTriangle(numRows);
        
       
        scanner.close();
    }


    public static void generatePascalsTriangle(int numRows) {
        int[][] triangle = new int[numRows][];

      
        for (int i = 0; i < numRows; i++) {
            triangle[i] = new int[i + 1];
            triangle[i][0] = 1; // The first element in each row is 1
            triangle[i][i] = 1; // The last element in each row is 1
        }

      
        for (int i = 2; i < numRows; i++) {
            for (int j = 1; j < i; j++) {
                triangle[i][j] = triangle[i - 1][j - 1] + triangle[i - 1][j];
            }
        }

   
        for (int i = 0; i < numRows; i++) {
            // Print leading spaces for formatting
            for (int j = 0; j < numRows - i - 1; j++) {
                System.out.print(" ");
            }
          
            for (int j = 0; j <= i; j++) {
                System.out.print(triangle[i][j] + " ");
            }
            System.out.println();
        }
    }
}
