<!DOCTYPE html>
<html>

<head>
    <!-- Google Tag Manager -->
    <!-- <script>
    (function(w, d, s, l, i) {
        w[l] = w[l] || [];
        w[l].push({
            'gtm.start': new Date().getTime(),
            event: 'gtm.js'
        });
        var f = d.getElementsByTagName(s)[0],
            j = d.createElement(s),
            dl = l != 'dataLayer' ? '&l=' + l : '';
        j.async = true;
        j.src =
            'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
        f.parentNode.insertBefore(j, f);
    })(window, document, 'script', 'dataLayer', 'GTM-5PL6QHS');
    </script> -->
    <!-- End Google Tag Manager -->
    <?php echo $this->Html->charset(); ?>
    <link rel="icon" href="http://192.168.33.10/mishon/img/logo_mishon.png">
    <?php
echo $this->Html->css(
    array(
        'bootstrap/bootstrap.min',
        'font-awsome/all',
        'jquery-ui/jquery-ui.min',
        'jquery-ui/jquery-ui.theme',
    )
);
echo $this->Html->script(
    array(
        'jquery/jquery.min',
        'lib/popper.min',
        'angular/angular.min',
        'bootstrap/bootstrap.min',
        'font-awsome/all',
    )
);
echo $this->fetch('meta');
echo $this->fetch('css');
echo $this->fetch('script');
?>
    <title>
        <?php echo $title; ?>
    </title>
</head>

<body>
    <!-- Google Tag Manager (noscript) -->
    <!-- <noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5PL6QHS" height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript> -->
    <!-- End Google Tag Manager (noscript) -->
    <?php echo $this->fetch('content'); ?>
</body>

</html>