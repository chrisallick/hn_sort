$(document).ready(function() {
	$("#hnmain .pagetop:eq(0)").append(" | ");

	var el = document.createElement('a');
	el.id = "sort_by_comments";
	el.href = "#";
	$(el).css({
		"color": "#FFFFFF",
	}).html("_comments_").appendTo("#hnmain .pagetop:eq(0)");

	$("#hnmain .pagetop:eq(0)").append(" | ");

	var el = document.createElement('a');
	el.id = "sort_by_domain";
	el.href = "#";
	$(el).css({
		"color": "#FFFFFF",
	}).html("_domain_").appendTo("#hnmain .pagetop:eq(0)");

	$("#hnmain .pagetop:eq(0)").append(" | ");

	var el = document.createElement('a');
	el.id = "sort_by_headline";
	el.href = "#";
	$(el).css({
		"color": "#FFFFFF",
	}).html("_headline-length_").appendTo("#hnmain .pagetop:eq(0)");
});