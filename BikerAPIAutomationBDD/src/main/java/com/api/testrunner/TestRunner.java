package com.api.testrunner;
import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
		features="features",
		glue={"com.api.step.def"},
		dryRun = false,
		monochrome = true,
		plugin = {"pretty","html:Reports/cucumber-html-report.html","json:Reports/jsonReports/cucumber-report.json",
				"com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"},
		publish = true
)
public class TestRunner {

}