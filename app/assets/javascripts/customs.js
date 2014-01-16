$(document).ready(function(){
 <% Pin.all.each do |x| %>
 	<% x.pics.all.each do |y| %>
 		y.addClass ('gallery');
 		y.rel += "group#{y.pin_id}";
 	<% end %>
 <% end %>
});