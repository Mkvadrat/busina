<div class="col-md-3 pad-none-left">
    <div class="search" id="search">
        <input type="search" name="search" value="<?php echo $search; ?>" placeholder="<?php echo $text_search; ?>" />
        <input type="submit" value="" onclick="submit();">
    </div>
</div>

<script>
    function submit(){
        url = $('base').attr('href') + 'index.php?route=product/search';
        var value = $('header input[name=\'search\']').val();
        if (value) {
            url += '&search=' + encodeURIComponent(value);
        }
        location = url;
    }
</script>	