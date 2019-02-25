package hello;


import java.util.List;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.Test;

public class testing {
	static WebDriver driver;
@Test
public void test1(){

		System.setProperty("webdriver.gecko.driver", "C:\\Users\\VINOTH KUMAR\\eclipse-workspace\\Selenium\\driver\\geckodriver.exe");
		driver = new FirefoxDriver();
		driver.get("https://www.guru99.com/"); 	
			List<WebElement> list = driver.findElements(By.xpath("//div[@class='row featured-boxes']//div//div//h4"));
			for (int i = 0; i < list.size(); i++) {
				System.out.println(list.get(i).getText());
		
		 }

}}
