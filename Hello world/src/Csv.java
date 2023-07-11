import java.io.IOException;

public class Csv {

	public static void main(String[] args) {
		
		        try {
		            // Path to the shell script
		            String scriptPath = "/mnt/c/Users/upandeti/eclipse-workspace/Hello world/scripts/read.sh";

		            // Create ProcessBuilder for executing the shell script
		            ProcessBuilder processBuilder = new ProcessBuilder("bash", scriptPath);

		            // Start the process
		            Process process = processBuilder.start();

		            // Wait for the script to complete
		            int exitCode = process.waitFor();

		            // Check if the script executed successfully
		            if (exitCode == 0) {
		                System.out.println("CSV file moved successfully.");
		            } else {
		                System.out.println("Failed to move the CSV file.");
		            }
		        } catch (IOException | InterruptedException e) {
		            e.printStackTrace();
		        }
		    
		


	}

}
