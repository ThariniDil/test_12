$(function() {
	//var base_url = "<?php echo base_url();?>";
	checknotification();

	deleteConfirmation('.userConfirm', 'user-id', 'user_id', 'admin_login', 'Are you sure, you want to delete this user!', 'User deleted successfully');
	deleteConfirmation('.productConfirm', 'product-id', 'product_id', 'product', 'Are you sure, you want to delete this product!', 'Product deleted successfully');
	deleteConfirmation('.categoryConfirm', 'category-id', 'cat_id', 'categary', 'Are you sure, you want to delete this category!', 'Category deleted successfully');
	deleteConfirmation('.brandConfirm', 'brand-id', 'type_id', 'types', 'Are you sure, you want to delete this brand!', 'Brand deleted successfully');
	deleteConfirmation('.sliderConfirm', 'slider-id', 'id', 'tbl_banner', 'Are you sure, you want to delete this banner!', 'Banner deleted successfully');
	deleteConfirmation('.tipConfirm', 'tip-id', 'id', 'beauty_tips', 'Are you sure, you want to delete this tip!', 'Tip deleted successfully');
	deleteConfirmation('.faqCategoryConfirm', 'faq-category-id', 'faq_cat_id', 'faq_category', 'Are you sure, you want to delete this FAQ Category!', 'FAQ Category deleted successfully');
	deleteConfirmation('.faqConfirm', 'faq-id', 'faq_id', 'faq', 'Are you sure, you want to delete this FAQ!', 'FAQ deleted successfully');
	deleteConfirmation('.vacancyConfirm', 'vacancy-id', 'vacancy_id', 'vacancies', 'Are you sure, you want to delete this vacancy!', 'Vacancy deleted successfully');
	deleteConfirmation('.partnerConfirm', 'partner-id', 'id', 'partner', 'Are you sure, you want to delete this patener!', 'Partner deleted successfully');
	deleteConfirmation('.cvConfirm', 'cv-id', 'careers_id', 'careers', 'Are you sure, you want to delete this applicant!', 'Applicant deleted successfully');
	closeimage();
});

function deleteConfirmation($className ,$dataId, $field, $table, $titleMsg, $successMsg) {
	var base_url = "<?php echo base_url();?>";

	$($className).click(function(e) {
		e.preventDefault();

		var id = $(this).data($dataId);

		//alert(userid);
		//console.log(userid);


		$.confirm({
		    title: 'Confirm!',
		    content: $titleMsg,
		    buttons: {
		        confirm: {
					text: 'Delete Anyway',
					btnClass: 'btn-danger',
		        	action: function () {
		        		//alert(base_url);
						$.ajax({
							url: 'http://localhost/alaris/admin/delete', //http://localhost/alaris/admin/delete
							type: 'post',
							//dataType: 'json',
							data: { 'id': id, 'field': $field, 'table': $table},
							success: function(msg) {
								location.reload();
								// $.confirm({
								// 	content: $successMsg,
								// 	buttons: {
								// 		confirm: {
								// 			text: 'Okay',
								// 			action: function() {
								// 				location.reload();
								// 			}
								// 		}
								// 	}
								// });
							}
						});
					}
    		    },
		        cancel: function () {
		            //$.alert('Canceled!');
		        }
		    }
		});
	});	
}

function closeimage() {
	$('.img-close').click(function() {
		$('.image-group').hide();
		$('#input-image').css('display', 'block');
	});
}

function checknotification() {

	setInterval(function(){
		$.ajax({
			url: 'http://localhost/alaris/admin/notificationCheck',
			type: 'post',
			data: { 'notifyStatus' : 0, 'notifyTable' : 'vacancy' },
			success: function(result) {
				result = $.parseJSON(result);
				$.each(result, function(index, value) {
					console.log(index + ' : ' + value);
				});
			}
		});
	}, 1000);	
}