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
                            echo $this->Form->input('pro_pic', array(
                                        'type' => 'file',
                                        'label' => 'Please Upload a user profile picture'
                                    ));
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
                    <div class="card">
                        <div class="content">
                            <h3>For ADD only</h3>
                            <img class="img-thumbnail" src="img\sidebar-3.jpg" alt="..."/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

