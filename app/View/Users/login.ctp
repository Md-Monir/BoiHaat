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
                            <a href="/boiHat/users/add" class="btn btn-info btn-fill pull-left" role="button">Add A New User</a>
                        </div>
                        <?php
                        echo $this->Html->link("Add A New User", array('action' => 'add'));
                        ?>
                        <a href="/boiHat/users/add" class="btn btn-info btn-fill" role="button">Add A New User</a>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card card-user">
                        <div class="image">
                            <img src="https://ununsplash.imgix.net/photo-1431578500526-4d9613015464?fit=crop&fm=jpg&h=300&q=75&w=400" alt="..."/>
                        </div>
                        <div class="content">
                            <div class="author">
                                <a href="#">
                                    <img class="avatar border-gray" src="assets/img/faces/face-3.jpg" alt="..."/>

                                    <h4 class="title">Mike Andrew<br />
                                        <small>michael24</small>
                                    </h4>
                                </a>
                            </div>
                            <p class="description text-center"> "Lamborghini Mercy <br>
                                Your chick she so thirsty <br>
                                I'm in that two seat Lambo"
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

