<?php
/* Smarty version 3.1.29, created on 2016-08-22 19:21:13
  from "D:\OpenServer\domains\engine\templates\guestbook.html" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_57bb26790a3c20_29977561',
  'file_dependency' => 
  array (
    '51c35347e005492fba4b13b004afb052722107e6' => 
    array (
      0 => 'D:\\OpenServer\\domains\\engine\\templates\\guestbook.html',
      1 => 1471882869,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_57bb26790a3c20_29977561 ($_smarty_tpl) {
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
