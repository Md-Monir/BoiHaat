<div class="users index">
    <h2><?php echo __('Users'); ?></h2>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th><?php echo $this->Paginator->sort('id'); ?></th>
                <th><?php echo $this->Paginator->sort('fullname'); ?></th>
                <th><?php echo $this->Paginator->sort('address'); ?></th>
                <th><?php echo $this->Paginator->sort('dob'); ?></th>
                <th><?php echo $this->Paginator->sort('username'); ?></th>
                <th><?php echo $this->Paginator->sort('email'); ?></th>
                <th><?php echo $this->Paginator->sort('password'); ?></th>
                <th><?php echo $this->Paginator->sort('avatar'); ?></th>
                <th><?php echo $this->Paginator->sort('created'); ?></th>
                <th><?php echo $this->Paginator->sort('modified'); ?></th>
                <th class="actions"><?php echo __('Actions'); ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($users as $user): ?>
                <tr>
                    <td><?php echo h($user['User']['id']); ?>&nbsp;</td>
                    <td><?php echo h($user['User']['fullname']); ?>&nbsp;</td>
                    <td><?php echo h($user['User']['address']); ?>&nbsp;</td>
                    <td><?php echo h($user['User']['dob']); ?>&nbsp;</td>
                    <td><?php echo h($user['User']['username']); ?>&nbsp;</td>
                    <td><?php echo h($user['User']['email']); ?>&nbsp;</td>
                    <td><?php echo h($user['User']['password']); ?>&nbsp;</td>
                    <td><?php echo h($user['User']['avatar']); ?>&nbsp;</td>
                    <td><?php echo h($user['User']['created']); ?>&nbsp;</td>
                    <td><?php echo h($user['User']['modified']); ?>&nbsp;</td>
                    <td class="actions">
                        <?php echo $this->Html->link(('View'), array('action' => 'view', $user['User']['id'])); ?>
                        <?php echo $this->Html->link(('Edit'), array('action' => 'edit', $user['User']['id'])); ?>
                        <?php echo $this->Form->postLink(('Delete'), array('action' => 'delete', $user['User']['id']), array('confirm' => __('Are you sure you want to delete # %s?', $user['User']['id']))); ?>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <p>
        <?php
        echo $this->Paginator->counter(array(
            'format' => __('Page {:page} of {:pages}, showing {:current} records out of {:count} total, starting on record {:start}, ending on {:end}')
        ));
        ?>	</p>
    <div class="paging">
        <?php
        echo $this->Paginator->prev('< ' . __('previous'), array(), null, array('class' => 'prev disabled'));
        echo $this->Paginator->numbers(array('separator' => ''));
        echo $this->Paginator->next(__('next') . ' >', array(), null, array('class' => 'next disabled'));
        ?>
    </div>
</div>
<div class="actions">
    <h3><?php echo __('Actions'); ?></h3>
    <ul>
        <li><?php echo $this->Html->link(('Home'), array('controller' => 'pages', 'action' => 'home')); ?></li>
        <li><?php echo $this->Html->link(__('New User'), array('action' => 'add')); ?></li>
        <li><?php echo $this->Html->link(__('List Books'), array('controller' => 'books', 'action' => 'index')); ?> </li>
        <li><?php echo $this->Html->link(__('New Book'), array('controller' => 'books', 'action' => 'add')); ?> </li>
        <li><?php echo $this->Html->link("Logout", array('action' => 'logout')); ?> </li>
    </ul>
</div>
