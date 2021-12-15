package io.cucumber.skeleton;

import io.cucumber.java.*;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class WebStepDefinitions {

    /**
     * Note: You must have installed chromedriver in your system
     *       https://chromedriver.chromium.org/downloads
     *       The version must match with the version of your Chrome browser
     */

    private static WebDriver driver;
    private static WebDriverWait wait;
    private Scenario scenario;
    private static int x;

    @BeforeAll
    public static void setUp() {
        // This property is optional.
        // If not specified, WebDriver searches the path for chromedriver in your environment variables
        // Example path for Linux or Mac:
        System.setProperty("webdriver.chrome.driver", "C:\\chromedriver_win32\\chromedriver.exe");
        driver = new ChromeDriver();
        wait = new WebDriverWait(driver, 5);
        x = 0;
    }

    @Before
    public void before(Scenario scenario) {
        this.scenario = scenario;
    }

    @Given("I go to {string} page")
    public void iGoToMiWebPage(String link) {
        driver.get(link);
        if(x==0) {
            driver.findElement(By.id("cookie-settings")).click();
            driver.findElement(By.id("accept-selected-cookies")).click();
            x++;
        }
    }

    @When("I write the {string} on {string}")
    public void iWriteOn(String text, String id) {
        By byId = By.id(id);
        wait.until(ExpectedConditions.visibilityOfElementLocated(byId));
        WebElement el = driver.findElement(By.id(id));
        el.clear();
        el.sendKeys(text);
    }

    @When("I press enter on {string}")
    public void iPressEnter(String id) {
        WebElement el = driver.findElement(By.id(id));
        el.sendKeys(Keys.ENTER);
    }

    @And("I click on {string} button")
    public void iClickOnButton(String text) {
        By byXPath = By.xpath("//button[contains(.,'"+ text +"')]");
        wait.until(ExpectedConditions.presenceOfElementLocated(byXPath));
        wait.until(ExpectedConditions.elementToBeClickable(byXPath));
        driver.findElement(byXPath).click();
    }

    @And("I click on button with {string} id")
    public void iClickOnButtonWithId(String id) {
        By byId = By.id(id);
        wait.until(ExpectedConditions.presenceOfElementLocated(byId));
        wait.until(ExpectedConditions.elementToBeClickable(byId));
        driver.findElement(byId).click();
    }

    @When("I click on {string} link")
    public void iClickOnLink(String text) {
        By byXPath = By.xpath("//a[contains(.,'"+ text +"')]");
        wait.until(ExpectedConditions.presenceOfElementLocated(byXPath));
        wait.until(ExpectedConditions.elementToBeClickable(byXPath));
        driver.findElement(byXPath).click();
    }

    @And("I click on {string} text")
    public void iClickOnText(String text) throws InterruptedException {
        By byXPath = By.xpath("//*[contains(.,'"+ text +"')]");
        wait.until(ExpectedConditions.presenceOfElementLocated(byXPath));
        wait.until(ExpectedConditions.elementToBeClickable(byXPath));
        driver.findElement(byXPath).click();
        Thread.sleep(3000);
    }

    @When("I click on {string} link by css selector")
    public void iClickOnLinkCssSelector(String id) throws InterruptedException {
        Thread.sleep(750);
        By byXPath = By.xpath("//a[contains(@class,'"+ id +"')]");
        wait.until(ExpectedConditions.presenceOfElementLocated(byXPath));
        driver.findElement(byXPath).click();
    }

    @When("I click on {string} filter list")
    public void iClickOnList(String text) {
        By byXPath = By.xpath("//a/span[.='"+text+"']");
        wait.until(ExpectedConditions.elementToBeClickable(byXPath));
        driver.findElement(byXPath).click();
    }

    @And("I select {string} on {string}")
    public void iSelectOnSelectable(String text, String id) {
        By byId = By.id(id);
        wait.until(ExpectedConditions.presenceOfElementLocated(byId));
        Select sel = new Select (driver.findElement(byId));
        sel.selectByVisibleText(text);
    }

    @And("I stay on {string} item")
    public void iStayOnItem(String text) {
        By byClass = By.className(text);
        wait.until(ExpectedConditions.elementToBeClickable(byClass));
        driver.findElement(byClass).click();
    }

    @Then("I should see a {string} button/text")
    public void iShouldSeeAnElement(String text) throws InterruptedException {
        By byXPath = By.xpath("//*[contains(text(),'" + text + "')]");
        wait.until(ExpectedConditions.presenceOfElementLocated(byXPath));
        boolean present = driver.findElements(byXPath).size() > 0;
        Assertions.assertTrue(present);
        Thread.sleep(500);
    }

    @Then("I should see a {string} quantity on {string}")
    public void iShouldSeeAQuantity(String text, String id) throws InterruptedException {
        Thread.sleep(3000);
        By byXPath = By.xpath("//input[contains(@class,'"+ id +"')]");
        WebElement el = driver.findElement(byXPath);
        boolean present = el.getAttribute("value").equals(text);
        Assertions.assertTrue(present);
    }

    @AfterAll()
    public static void tearDown() {
        driver.quit();
    }
}
