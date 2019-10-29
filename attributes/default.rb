
#Little recap on ERB (embed ruby)
#to embed (or interpolate) some ruby you use the ice cream cones <% %>

#There are two types of embed logic
  # one returns something
    #<%=@proxy_port %>
  #The other does not return
    # <%@proxy_port %>

    # <% @proxy_port ='hello'%>
    # <% sleep(3) %>

default['nginx']['proxy_port'] = 3000 #this is a nested dictionary
default['nginx']['proxy_port_mutton'] = 3030
