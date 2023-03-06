package features;
import com.intuit.karate.junit5.Karate;
public class FileRunner {
	
	@Karate.Test
	Karate sampleTest() {
		return new Karate().path("classpath:fileWork").relativeTo(getClass());
	}
}