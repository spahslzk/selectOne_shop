/**
 * 
 */

// 검색창
function searchToggle(obj, evt) {
		var container = $(obj).closest('.search');
		if (!container.hasClass('active')) {
			container.addClass('active');
			evt.preventDefault();
		} else if (container.hasClass('active')
				&& $(obj).closest('.searchbody').length == 0) {
			container.removeClass('active');
			// clear input
			container.find('.search-input').val('');
		}
	}