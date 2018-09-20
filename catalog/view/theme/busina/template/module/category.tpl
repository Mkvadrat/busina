<button class="mob-catalog"><span>Показать</span><span class="opened">Скрыть</span> каталог</button>
<ul class="list-text-items">
  <!-- FIRST LEVEL --> 
  <?php foreach ($all_categories as $category) { ?>
  <?php if ($category['category_id'] == $category_id) { ?>
  <li><a href="<?php echo $category['href']; ?>" class="active-category"><?php echo $category['name']; ?></a></li>
  <?php if ($category['children']) { ?>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?>
  <li><a href="<?php echo $child['href']; ?>" class="active-category">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a></li>
  <?php } else { ?>
  <li><a href="<?php echo $child['href']; ?>">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a></li>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } else { ?>
  <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
  <?php } ?>
  <?php } ?>
  
  <!-- SECOND LEVEL --> 
  <?php foreach ($categories as $category) { ?>
  <?php if ($category['category_id'] == $category_id) { ?>
  <li><a href="<?php echo $category['href']; ?>" class="active-category"><?php echo $category['name']; ?></a></li>
  <?php if ($category['children']) { ?>
  <?php foreach ($category['children'] as $child) { ?>
  <?php if ($child['category_id'] == $child_id) { ?>
  <li><a href="<?php echo $child['href']; ?>" class="active-category">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a></li>
  <?php // CategoriesMenu3rdLevel >>> ?>
  <?php if ($child['children_lv3']) { ?>
  <?php foreach ($child['children_lv3'] as $child_lv3) { ?>
  <?php if ($child_lv3['category_id'] == $child_lv3_id) { ?>
  <li><a href="<?php echo $child_lv3['href']; ?>" class="active-category">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8211; <?php echo $child_lv3['name']; ?></a></li>
  <?php } else { ?>
  <li><a href="<?php echo $child_lv3['href']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8211; <?php echo $child_lv3['name']; ?></a></li>
  <?php } ?>
  <?php if ($child_lv3['children_lv4'] && $child_lv3['category_id'] == $child_lv3_id) { ?>
  <?php foreach ($child_lv3['children_lv4'] as $child_lv4) { ?>
  <?php if ($child_lv4['category_id'] == $child_lv4_id) { ?>
  <li><a href="<?php echo $child_lv4['href']; ?>" class="active-category">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8211; <?php echo $child_lv4['name']; ?></a></li>
  <?php } else { ?>
  <li><a href="<?php echo $child_lv4['href']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&#8211; <?php echo $child_lv4['name']; ?></a></li>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php // <<<CategoriesMenu3rdLevel ?>
  <?php } else { ?>
  <li><a href="<?php echo $child['href']; ?>">&nbsp;&nbsp;&nbsp;- <?php echo $child['name']; ?></a></li>
  <?php } ?>
  <?php } ?>
  <?php } ?>
  <?php } else { ?>
  <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
  <?php } ?>
  <?php } ?>
</ul>
