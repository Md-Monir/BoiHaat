<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <link rel="icon" type="image/png" href="img/favicon.ico">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

        <title>Boi Haat</title>

        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />
        <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">


    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <a class="btn big-login" data-toggle="modal" href="javascript:void(0)" onclick="openLoginModal();">Log in</a>
                    <a class="btn big-register" data-toggle="modal" href="../users/add" >Register</a>
                </div>
                <div class="col-sm-4"></div>
            </div>


            <div class="modal fade login" id="loginModal">
                <div class="modal-dialog login animated">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title">Login with</h4>
                        </div>
                        <div class="modal-body">  
                            <div class="box">
                                <div class="content">
                                    <div class="social">
                                        <a class="circle github" href="/auth/github">
                                            <i class="fa fa-github fa-fw"></i>
                                        </a>
                                        <a id="google_login" class="circle google" href="/auth/google_oauth2">
                                            <i class="fa fa-google-plus fa-fw"></i>
                                        </a>
                                        <a id="facebook_login" class="circle facebook" href="/auth/facebook">
                                            <i class="fa fa-facebook fa-fw"></i>
                                        </a>
                                    </div>
                                    <div class="division">
                                        <div class="line l"></div>
                                        <span>or</span>
                                        <div class="line r"></div>
                                    </div>
                                    <div class="error"></div>
                                    <div class="form loginBox">
                                        <?php echo $this->Form->create('User'); ?>
                                        <fieldset>
                                            <?php
                                            echo $this->Form->input('username');
                                            echo $this->Form->input('password');
                                            ?>
                                        </fieldset>
                                        <?php echo $this->Form->end(('Login')); ?>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <div class="forgot login-footer">
                                <span>Looking to 
                                    <a href="../users/add">create an account</a>
                                    ?</span>
                            </div>
                        </div>        
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
