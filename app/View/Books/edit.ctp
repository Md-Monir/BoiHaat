<div class="wrapper">
    <div class="sidebar" data-color="purple" data-image="img/sidebar-4.jpg">
        <!--
        change the color of the sidebar using: data-color="blue | azure | green | orange | red | purple"
        add an image using data-image tag
        -->
        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="/boiHat" class="simple-text">
                    Boi Haat
                </a>
            </div>

            <ul class="nav">
                <li>
                    <a href="/boiHat">
                        <i class="pe-7s-graph"></i>
                        <p>Home Page</p>
                    </a>
                </li>
                <li>
                    <a href="/boiHat/users/view">
                        <i class="pe-7s-user"></i>
                        <p>User Profile</p>
                    </a>
                </li>
                <li>
                    <a href="/boiHat/books/add">
                        <i class="pe-7s-plus"></i>
                        <p>Add book</p>
                    </a>
                </li>
                <li>
                    <a href="/boiHat/books">
                        <i class="pe-7s-news-paper"></i>
                        <p>All my books</p>
                    </a>
                </li>
                <li>
                    <a href="notifications.html">
                        <i class="pe-7s-bell"></i>
                        <p>Notifications</p>
                    </a>
                </li>
                <li>
                    <a href="<?php $this->Html->link("Logout", array('controller' => 'users', 'action' => 'logout')); ?>">
                        <i class="pe-7s-switch"></i>
                        <p>Logout</p>
                    </a>
                </li>

            </ul>
        </div>
    </div>

    <div class="main-panel">
        <nav class="navbar navbar-default navbar-fixed">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example-2">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand">Edit book</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <?php echo $this->Html->link("Logout", array('controller' => 'users', 'action' => 'logout')); ?>
                        </li>
                        <li class="separator hidden-lg hidden-md"></li>
                    </ul>
                </div>
            </div>
        </nav>

        <?php echo $this->Form->create('Book'); ?>
        <fieldset>
            <?php
            echo $this->Form->input('id');
            echo $this->Form->input('avatar', array(
                'type' => 'file',
                'label' => 'Please Upload a book cover picture'
            ));
            echo $this->Form->input('bookname');
            echo $this->Form->input('publisher');
            echo $this->Form->input('author');
            echo $this->Form->input('pubyear');
            echo $this->Form->input('rating');
            echo $this->Form->input('catagory');
            echo $this->Form->input('summary');
            ?>
        </fieldset>
        <?php echo $this->Form->end('Submit'); ?>
    </div>
</div>