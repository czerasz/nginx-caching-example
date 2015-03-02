FROM nginx

# Set the reset cache variable
ENV REFRESHED_AT 2015-03-02

# Update repositories lists
RUN apt-get update

# Install application dependencies
RUN apt-get install -y ruby-full
RUN gem install sinatra

# Setup nginx caching requirements
RUN mkdir -p /tmp/nginx/cache && \
    chown nginx:nginx /tmp/nginx/cache

# Install other tools
RUN apt-get install -y vim curl supervisor

# Add configuration files
ADD ./config/nginx.conf /etc/nginx/nginx.conf
ADD ./config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Add application code
ADD ./app.rb /usr/lib/app.rb

# Define default command.
CMD ["/usr/bin/supervisord"]
