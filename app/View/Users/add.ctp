<br>
<div class="wrapper">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-8">
                    <div class="card">
                        <?php echo $this->Form->create('User'); ?>
                        <fieldset>
                            <legend><?php echo ('Add User'); ?></legend>
                            <?php
                            echo $this->Form->input('fullname');
                            echo $this->Form->input('address');
                            echo $this->Form->input('dob');
                            echo $this->Form->input('username');
                            echo $this->Form->input('email');
                            echo $this->Form->input('password');
                            ?>
                        </fieldset>
                        <?php echo $this->Form->end(('Submit')); ?>
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

