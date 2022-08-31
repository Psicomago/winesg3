<%= form_with(model: strain_wine, local: true) do |form| %>
    <div class="field">
      <%= form.label :percentage %>
      <%= form.number_field :percentage %>
    </div>
  
    <div class="actions">
      <%= form.submit %>
    </div>
<% end %>