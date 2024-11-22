<% if current_user.reservations_as_teacher.include? reservation %>
        <% if reservation.pending? %>
          <%= simple_form_for reservation do |f| %>
            <%= f.input :status, as: :hidden, input_html: { value: 'accepted'} %>
            <%= f.submit 'Accept', class: 'btn btn-info' %>
          <% end %>
          <%= simple_form_for reservation do |f| %>
            <%= f.input :status, as: :hidden, input_html: { value: 'rejected'} %>
            <%= f.submit 'Reject', class: 'btn btn-light' %>
          <% end %>
        <% else %>
          <span class="tag-green"><%= reservation.status %></span>
        <% end %>
