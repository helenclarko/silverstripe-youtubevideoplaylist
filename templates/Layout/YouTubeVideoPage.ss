<div id="contentHolder">
	<% include SideBar %>
	
	<div id="content" class="typography">	
		$Content
		<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>

		 <div id="music">
		 <table>
		 <tr>
		 <td style="background-color: #000509;margin:0px;padding:0px"><iframe id="player" width="560" height="360" src="" frameborder="0" allowfullscreen wmode="Opaque"></iframe></td>
		 <td style="border-top-right-radius:5px;border-bottom-right-radius:5px;background-color: #000509;margin:0px;padding:0px;">
			
				 <h2 style="color:#CCCCCC;padding-right:85px">Playlist</h2>
			<div style="width: 100%;max-height:360px;overflow: auto;">
				 <ul id="videos">
					<% control Video %>
						<li><a style="color:#CCCCCC;" href="//www.youtube.com/embed/$URL">$VideoName</a></li>
					<% end_control %>
				</ul>
			</div>
		 </td>
		 </tr>
		 </table>
		</div>
		<script>
			var $ = jQuery.noConflict();
			jQuery("ul#videos li a").on('click', function(e){
				e.preventDefault();
				var tubeSrc = jQuery(this).attr('href');
				jQuery('#player').attr('src', tubeSrc+"?wmode=transparent");
			});
		</script>
		
	</div>
</div> 