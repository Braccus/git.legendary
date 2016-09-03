<?php
/* Smarty version 3.1.29, created on 2016-08-25 22:06:17
  from "E:\OpenServer\domains\phpHW8\templates\guestbook.html" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_57bf41a97a6471_57873802',
  'file_dependency' => 
  array (
    '7f9031b5890996d965bf21993357c3faf02ec3ad' => 
    array (
      0 => 'E:\\OpenServer\\domains\\phpHW8\\templates\\guestbook.html',
      1 => 1471882870,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_57bf41a97a6471_57873802 ($_smarty_tpl) {
?>
<h1>Гостевая книга</h1>
<?php
$_from = $_smarty_tpl->tpl_vars['entries']->value;
if (!is_array($_from) && !is_object($_from)) {
settype($_from, 'array');
}
$__foreach_entry_0_saved_item = isset($_smarty_tpl->tpl_vars['entry']) ? $_smarty_tpl->tpl_vars['entry'] : false;
$_smarty_tpl->tpl_vars['entry'] = new Smarty_Variable();
$_smarty_tpl->tpl_vars['entry']->_loop = false;
foreach ($_from as $_smarty_tpl->tpl_vars['entry']->value) {
$_smarty_tpl->tpl_vars['entry']->_loop = true;
$__foreach_entry_0_saved_local_item = $_smarty_tpl->tpl_vars['entry'];
?>
<b><?php echo $_smarty_tpl->tpl_vars['entry']->value->getUser()->getName();?>
</b>, <?php echo $_smarty_tpl->tpl_vars['entry']->value->getUser()->getEmail();?>
 <?php echo $_smarty_tpl->tpl_vars['entry']->value->getCreatedAt();?>
<br>
<?php echo htmlspecialchars($_smarty_tpl->tpl_vars['entry']->value->getMessage());?>

<hr>
<?php
$_smarty_tpl->tpl_vars['entry'] = $__foreach_entry_0_saved_local_item;
}
if ($__foreach_entry_0_saved_item) {
$_smarty_tpl->tpl_vars['entry'] = $__foreach_entry_0_saved_item;
}
}
}
