FROM ruby:3.4.4

# Install dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    nodejs \
    npm \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy Gemfile first for better caching
COPY Gemfile* ./

# Install Jekyll and bundler
RUN gem install bundler jekyll

# Install gems
RUN bundle install

# Copy the rest of the application
COPY . .

# Build the Jekyll site
RUN bundle exec jekyll build

# Use nginx to serve the static files
FROM nginx:alpine

# Copy the built site from the previous stage
COPY --from=0 /app/_site /usr/share/nginx/html

# Create health check endpoint for Kamal
RUN echo "OK" > /usr/share/nginx/html/up

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
