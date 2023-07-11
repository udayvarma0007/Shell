import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class Example {

	public static void main(String[] args) {
		try {

			String scriptPath = "/mnt/c/Users/upandeti/eclipse-workspace/Hello world/scripts/echo.sh";

			// Create the ProcessBuilder for the shell script

			ProcessBuilder processBuilder = new ProcessBuilder("bash", scriptPath);

			// Start the process
			Process process = processBuilder.start();

			// Read the output from the process
			InputStream inputStream = process.getInputStream();
			BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream));
			String line;
			while ((line = reader.readLine()) != null) {
				System.out.println(line);
			}

			// Wait for the process to complete
			int exitCode = process.waitFor();

			// Print the exit code
			System.out.println("Script execution completed with exit code: " + exitCode);
		} catch (IOException | InterruptedException e) {
			e.printStackTrace();
		}
	}
}
