package features;
import com.intuit.karate.junit5.Karate;
public class NamedRunner {
	
	@Karate.Test
	Karate sampleTest() {
//		path(s) to features file here. no need to put .feature ending
		return Karate.run("conditional").relativeTo(getClass());
	}
//	@Karate.Test
//	Karate getAPITest() {
////		path(s) to features file here. no need to put .feature ending
//		return Karate.run("getapi").relativeTo(getClass());
//	}
//	
//	@Karate.Test
//	Karate deleteAPITest() {
//		return Karate.run("createAndDeleteUser").relativeTo(getClass());
//	}

	
	
	
}