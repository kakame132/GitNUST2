<script>
$(document).ready(function () {
$(“#Edit_form”).validate({
debug: true,
rules: {
“album[title]“: {required: true}
}
});
});
</script>
