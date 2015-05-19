<ul class="list-group">
<% for i, v in pairs(html.tasklist) do %>
	<% for key, value in pairs(v) do html.debug(key .. "=" .. value) end %>
	<li class="list-group-item">
		<div class="btn-group">
			<a href="#" class="btn btn-xs dropdown-toggle" data-toggle="dropdown">
				<%= html.img(html.dueicon(v), 16) %>
				<span class="caret"></span>
			</a>
			<ul class="dropdown-menu">
				<li><a href="?action=new_task&database=<%= html.dbactive %>"><%= html.img("note_add", 16) %> Nova tarefa</a></li>
				<li><a href="?action=upd_task&id=<%= v.id %>&database=<%= html.dbactive %>"><%= html.img("note_edit", 16) %> Editar tarefa</a></li>
				<% if v.recurrent == 1 then %>
					<li><a href="?action=del_task&id=<%= v.id %>&name=<%= v.name %>&database=<%= html.dbactive %>"><%= html.img("note_delete", 16) %> Excluir tarefa</a></li>
				<% else %>
					<li><a href="?action=del_task&id=<%= v.id %>&name=<%= v.name %>&recurrent=<%= v.recurrent %>&database=<%= html.dbactive %>"><%= html.img("note_go", 16) %> Concluir tarefa</a></li>
				<% end %>
				<li class="divider"></li>
				<li><a href="?action=set_date&date=today&id=<%= v.id %>&database=<%= html.dbactive %>"><%= html.img("today", 16) %> Marcar para hoje</a></li>
				<li><a href="?action=set_date&date=tomorrow&id=<%= v.id %>&database=<%= html.dbactive %>"><%= html.img("tomorrow", 16) %> Marcar para amanhã</a></li>
				<li><a href="?action=set_date&date=anytime&id=<%= v.id %>&database=<%= html.dbactive %>"><%= html.img("anytime", 16) %> Deixar para qualquer dia</a></li>
			</ul>
		</div>
		<%= v.name %>
	</li>
<% end %>
</ul>