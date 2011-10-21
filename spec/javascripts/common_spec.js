describe("Common", function() {

	describe("#isValidEmailAddress", function() {
		it("should return true for a valid email", function() {
	    expect(sm.isValidEmailAddress("mail@mail.com")).toBeTruthy();
	  });

		it("should return false for an invalid email", function() {
	    expect(sm.isValidEmailAddress("mailmail.com")).toBeFalsy();
	  });
	});
});
