package stepDefinitions;

import java.io.IOException;

import io.cucumber.java.Before;

public class Hooks {

	@Before("@DeletePlace")
	public void beforeScenario() throws IOException {
		// write code to get place_id
		// execute this code only when place_id is null
		StepDefinition m = new StepDefinition();
		if (StepDefinition.place_id == null) {
			m.add_place_payload_with("Sayan", "German", "Asia");
			m.user_calls_with_http_request("addPlaceAPI", "POST");
			m.verify_place_id_created_maps_to_using("Sayan", "getPlaceAPI");
		}

	}
}
