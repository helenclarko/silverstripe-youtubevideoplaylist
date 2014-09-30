<div id="contentHolder">
	<% include SideBar %>
	
	<div id="content" class="typography">	
		$Content
		<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>

		<div id="music">
		
			<% if Bottom %>
				<div style="box-shadow: 0 2px 2px rgba(0, 0, 0, 0.3); width:640px">
				<table style="width:80%">
					<tr>
						<% control Video %>
							<% if First %>
								<td style="margin:0px;padding:0px;background-color:#000509;"><iframe id="player" width="640" height="360" src="//www.youtube.com/embed/$URL" frameborder="0" allowfullscreen wmode="Opaque"></iframe></td>
							<% end_if %>
						<% end_control %>
					 </tr>
					 <tr>
						<td style="border-bottom-left-radius:5px;border-bottom-right-radius:5px;background-color:$BackgroundColour;margin:0px;padding:0px;">
								 <h2 style="color:$TextColour;">Playlist</h2>
							<div style="width: 100%;max-width:640px;max-height:180px;overflow: auto;" id="videos">
									<% control Video %>
										<div style="float:left;margin:10px;width:120px"><a style="color:$TextColour;" href="//www.youtube.com/embed/$URL"><img src="http://img.youtube.com/vi/$URL/1.jpg"><br>$VideoName</a></div>
									<% end_control %>
							</div>
						 </td>
					</tr>
			 <% else %>
				 <div style="box-shadow: 0 2px 2px rgba(0, 0, 0, 0.3)">
				<table>
					<tr>
						<% control Video %>
							<% if First %>
								<td style="margin:0px;padding:0px;background-color:#000509;"><iframe id="player" width="560" height="360" src="//www.youtube.com/embed/$URL" frameborder="0" allowfullscreen wmode="Opaque"></iframe></td>
							<% end_if %>
						<% end_control %>
						 <td style="border-top-right-radius:5px;border-bottom-right-radius:5px;background-color:$BackgroundColour;margin:0px;padding:0px;">
								 <h2 style="color:$TextColour;padding-right:85px">Playlist</h2>
							<div style="width: 100%;max-height:340px;overflow: auto;">
								 <ul style="padding: 0; margin: 5;" id="videos">
									<% control Video %>
										<li style="list-style: none; padding: 0; margin: 0;"><a style="color:$TextColour;" href="//www.youtube.com/embed/$URL"><img src="http://img.youtube.com/vi/$URL/1.jpg"><br>$VideoName</a></li>
									<% end_control %>
								</ul>
							</div>
						 </td>
					</tr>
			<% end_if %>
		 
		</table>
		</div>
		</div>
		<script>
			var $ = jQuery.noConflict();
			jQuery("#videos a").on('click', function(e){
				e.preventDefault();
				var tubeSrc = jQuery(this).attr('href');
				jQuery('#player').attr('src', tubeSrc+"?wmode=transparent");
			});
		</script>
		
	</div>
</div> 