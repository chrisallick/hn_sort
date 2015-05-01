$(document).ready(function() {
	var el = document.createElement('a');
	el.id = "sort_by_comments";
	el.href = "#";
	$(el).css({
		// "z-index": 10000000000000,
		// "border": "1px solid white",
		// "background-color": "#000000",
		// "padding": "10px",
		// "color": "#FFFFFF",
		// "position": "absolute",
		// "top": "80px",
		// "left": "20px"
	}).html(" | _comments_").appendTo("#hnmain .pagetop:eq(0)");

	var el = document.createElement('a');
	el.id = "sort_by_domain";
	el.href = "#";
	$(el).css({
		// "z-index": 10000000000000,
		// "border": "1px solid white",
		// "background-color": "#000000",
		// "padding": "10px",
		// "color": "#FFFFFF",
		// "position": "absolute",
		// "top": "80px",
		// "left": "20px"
	}).html(" | _domain_").appendTo("#hnmain .pagetop:eq(0)");

	var el = document.createElement('a');
	el.id = "sort_by_headline";
	el.href = "#";
	$(el).css({
		// "z-index": 10000000000000,
		// "border": "1px solid white",
		// "background-color": "#000000",
		// "padding": "10px",
		// "color": "#FFFFFF",
		// "position": "absolute",
		// "top": "80px",
		// "left": "20px"
	}).html(" | _headline-length_").appendTo("#hnmain .pagetop:eq(0)");
});