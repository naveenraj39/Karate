package karate.test;
import com.intuit.karate.junit5.Karate;


public class TestRun {
  @Karate.Test
  public Karate validLoginTest() {
    return Karate.run("classpath:karate/test/Login.feature");
    		     
  }
}