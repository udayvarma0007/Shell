import java.io.IOException;

public class DeleteOldFiles {

	
	    public static void main(String[] args) {
	        try {
	            // Replace /path/to/delete_old_files.sh with the actual path to your shell script
	        	String scriptPath = "/home/udayvarma/Shell/Hello world/scripts/unziptar.sh";
	        	
	            ProcessBuilder processBuilder = new ProcessBuilder("bash", scriptPath);
	            
	            
	            Process process = processBuilder.start();
	            
	           
	            int exitCode = process.waitFor();

	            if (exitCode == 0) {
	                System.out.println(" successfully.");
	            } else {
	                System.out.println("Failed .");
	            }
	        } catch (IOException | InterruptedException e) {
	            e.printStackTrace();
	        }
	    }
	

	
}
