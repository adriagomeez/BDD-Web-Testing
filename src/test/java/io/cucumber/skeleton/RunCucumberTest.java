package io.cucumber.skeleton;

import org.junit.platform.suite.api.ConfigurationParameter;
import org.junit.platform.suite.api.IncludeEngines;
import org.junit.platform.suite.api.SelectClasspathResource;
import org.junit.platform.suite.api.Suite;

import static io.cucumber.junit.platform.engine.Constants.PLUGIN_PROPERTY_NAME;
//https://reports.cucumber.io/reports/4a45a1b7-3f71-4570-9829-f020900c81e9
@Suite
@IncludeEngines("cucumber")
@SelectClasspathResource(value = "io/cucumber/skeleton/MakeOrder.feature", column = 3)
@SelectClasspathResource(value = "io/cucumber/skeleton/DropdownBasket.feature", column = 3)
@SelectClasspathResource(value = "io/cucumber/skeleton/Favorites.feature", column = 3)
@SelectClasspathResource(value = "io/cucumber/skeleton/Search.feature", column = 3)
@SelectClasspathResource(value = "io/cucumber/skeleton/FiltersSearch.feature", column = 3)
@SelectClasspathResource(value = "io/cucumber/skeleton/Help.feature", column = 3)
@SelectClasspathResource(value = "io/cucumber/skeleton/CreateUser.feature", column = 3)
@SelectClasspathResource(value = "io/cucumber/skeleton/LogIn.feature", column = 3)
@SelectClasspathResource(value = "io/cucumber/skeleton/EditAccount.feature", column = 3)
@SelectClasspathResource(value = "io/cucumber/skeleton/Basket.feature", column = 3)
@ConfigurationParameter(key = PLUGIN_PROPERTY_NAME, value = "pretty")
@ConfigurationParameter(key = PLUGIN_PROPERTY_NAME, value = "html:target/cucumber/report.html, json:target/cucumber/report.json")
public class RunCucumberTest {
}
