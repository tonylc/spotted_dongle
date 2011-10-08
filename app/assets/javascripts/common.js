sm = {
	isValidEmailAddress: function(s) {
      return /^([-!#$%&'*+/=?^`{|}~\w]+(?:\.[-!#$%&'*+/=?^`{|}~\w]+)*)@((?:[a-zA-Z0-9](?:[-a-zA-Z0-9]*[a-zA-Z0-9])?\.)+[a-zA-Z]{2,6})$/.test(s);
  }
}
