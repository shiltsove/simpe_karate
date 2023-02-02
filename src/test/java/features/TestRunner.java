package features;
import com.intuit.karate.junit5.Karate;
public class TestRunner {
	
	@Karate.Test
	Karate sampleTest() {
		return new Karate().path("classpath:runnerTest").relativeTo(getClass());
	}
}