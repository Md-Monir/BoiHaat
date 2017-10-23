<br>
<div class="wrapper">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                    <div class="card">
                        <div class="users form">
                            <?php echo $this->Session->flash('auth'); ?>
                            <?php echo $this->Form->create('User'); ?>
                            <fieldset>
                                <legend><?php echo ('Please enter your username and password'); ?></legend>
                                <?php
                                echo $this->Form->input('username');
                                echo $this->Form->input('password');
                                ?>
                            </fieldset>
                            <?php echo $this->Form->end(('Login')); ?> 
                        </div>
                        <a href="/boiHat/users/add" class="btn btn-info btn-fill" role="button">Add A New User</a>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card">
                        <div class="content">
                            <h3>For ADD only</h3>
                            <img class="img-thumbnail" src="../img/sidebar-3.jpg" alt="..."/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

