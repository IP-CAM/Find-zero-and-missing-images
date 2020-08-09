<?=$header;?><?=$column_left;?>
<div id="content">
	<div class="page-header">
		<div class="container-fluid">
			<div class="pull-right">
				<button type="submit" form="form-subscribers" data-toggle="tooltip" title="<?=$button_save;?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
				<a href="<?=$cancel;?>" data-toggle="tooltip" title="<?=$button_cancel;?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
				<h1><?=$heading_title;?></h1>
				<ul class="breadcrumb">
					<?php foreach ($breadcrumbs as $breadcrumb) { ?>
					<li><a href="<?=$breadcrumb['href'];?>"><?=$breadcrumb['text'];?></a></li>
					<?php } ?>
				</ul>
			</div>
		</div>
		<div class="container">
			<div class="content">
			<?php if ($error_warning) { ?>
			<div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?=$error_warning;?> 
				<button type="button" class="close" data-dismiss="alert">&times;</button>
			</div>
			<?php } ?>
				<div id="aside-center">
					<div class="card" id="menu_main">
						<div class="body-card">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h3 class="panel-title"><i class="fa fa-pencil"></i> <?=$text_edit;?></h3>
								</div>
								<div class="panel-body">
									<form action="<?=$action;?>" method="POST" enctype="multipart/form-data" id="form-images_finder" class="form-horizontal">
										<div class="form-group">
											<label class="col-sm-2 control-label" for="input-status"><?=$entry_status;?></label>
											<div class="col-sm-10">
												<select name="module_images_finder_status" id="input-status" class="form-control">
													<?php if ($module_images_finder_status) { ?>
													<option value="1" selected="selected"><?=$text_enabled;?></option>
													<option value="0"><?=$text_disabled;?></option>
													<?php } else { ?>
													<option value="1"><?=$text_enabled;?></option>
													<option value="0" selected="selected"><?=$text_disabled;?></option>
													<?php } ?>
												</select>
											</div>
										</div>
										
									</form>
								</div>
							</div>
							<div style="text-align: center;"><?=$text_autor;?></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
