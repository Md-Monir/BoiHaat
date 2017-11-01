<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link rel="icon" type="image/png" href="img/favicon.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>Boi Haat</title>

        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />

        <?php
        echo $this->Html->css('bootstrap.min');
        echo $this->Html->css('animate.min');
        echo $this->Html->css('light-bootstrap-dashboard');
        echo $this->Html->css('pe-icon-7-stroke');
        echo $this->Html->css('cake.generic');
        ?>

    </head>

    <body>
        <div id="container">
            <div id="content">
                <?php echo $this->fetch('content'); ?>
            </div>
        </div>
        
        <?php
        echo $this->Html->script('jquery-1.10.2');
        echo $this->Html->script('bootstrap.min');
        echo $this->Html->script('bootstrap-checkbox-radio-switch');
        echo $this->Html->script('chartist.min');
        echo $this->Html->script('bootstrap-notify');
        echo $this->Html->script('light-bootstrap-dashboard');
        ?>
    </body>
</html>
