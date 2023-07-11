import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.stream.Collectors;


public class Hello {
	
	private static class ProcessReader implements Callable{
		private InputStream inputStream;
		
		public ProcessReader(InputStream inputStream) {
			this.inputStream=inputStream;
		}
		
		@Override
		public Object call() throws Exception {
			return new BufferedReader(new InputStreamReader(inputStream)).lines().collect(Collectors.toList());
		}
		
	}

	public static void main(String[] args) {
		boolean isWindows = System.getProperty("os.name").toLowerCase().startsWith("windows");
		
		ProcessBuilder builder= new ProcessBuilder();
		if(!isWindows) {
			builder.command(System.getProperty("user.dir") + "\\scripts\\echo.bat");
		}else {
			builder.command("sh", "-c", System.getProperty("user.dir") + "/mnt/c/Users/upandeti/eclipse-workspace/Hello world/scripts/echo.sh");
			
		}
		
		ExecutorService pool = Executors.newSingleThreadExecutor();
		
		
		try {
			Process process = builder.start();
			ProcessReader task = new ProcessReader(process.getInputStream());
			Future<List<String>> future= pool.submit(task);
			
			List<String> result =future.get();
			for(String res : result) {
				System.out.println(res);
			}
			
			int exitCode = process.waitFor();
			
			System.out.println("Exit code: " + exitCode);
		} catch (IOException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ExecutionException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			pool.shutdown();
		}

	}

}
