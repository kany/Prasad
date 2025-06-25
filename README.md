# Prasad
<a href="https://jekyll-themes.com">
    <img src="https://img.shields.io/badge/featured%20on-JT-red.svg" height="20" alt="Jekyll Themes Shield" >
</a>

> Prasad is a complete Jekyll theme designed for portfolio and blog for developers,  developed from forked version of Affiliate Jekyll theme.

- **Demo:** https://kany.github.io/Prasad/

<img width="1506" alt="Screenshot 2025-01-19 at 7 17 22 AM" src="https://github.com/user-attachments/assets/0c451ae6-6821-4e3d-b09b-57912e1124eb" />

>You can view the full live site using this theme <a href="https://kany.github.io/Prasad/" target="_blank">
>HERE.</a> <br>

## Local development and setup instructions
* Clone this repo: [https://github.com/kany/Prasad](https://github.com/kany/Prasad)
* Run `bundle install`
* Run `./bin/dev` OR `bundle exec jekyll serve`
* Navigate to [http://localhost:4000](http://localhost:4000)

## Quick Deployment Instructions Using Kamal
Use these instructions if you want to quickly deploy the application and see it running on your own server.

**Warning:** These instructions do not include instructions on hardening your server. Additional steps are needed to
secure your server. These instructions are NOT for production use. Only use these instructions for testing purposes.

* Make sure Docker Desktop is running on your local machine
* Set the `KAMAL_REGISTRY_PASSWORD` environment variable on your local machine
* Create a VPS server and make sure you can SSH into the server using the `root` user.
* Example `ssh root@1.2.3.4`
* Add an `A` record to your domain registration
```
Type: A
Name: @
IP: 1.2.3.4
```
* If using a subdomain, add another `A` record to your domain registration.
```
Type: A
Name: subdomain-name
IP: 1.2.3.4
```
* Update the `config/deploy.yml` file
```
image: yourdockerhubusername/jekyll-prasad-kamal
servers:
  web:
    - 1.2.3.4
proxy:
  ssl: true
  host: yourdomain.com or subdomain-name.yourdomain.com
registry:
  username: "yourdockerhubusername"
```
* Update the `_config.yml` file
```
url: "https://yourdomain.com"
baseurl: ""
```
* Run `kamal setup`
* Visit `http://yourdomain.com`

## Ultimate Guide to setup Prasad Jekyll theme
Please refer to the [Theme setup in the demo site for full documentation of the theme.](https://kany.github.io/Prasad/theme-setup/)

Prasad is the modified form of Affiliates Jekyll Theme.

* **Demo**: [https://kany.github.io/Prasad](https://kany.github.io/Prasad)

> You can view the full live site using this theme HERE.
> If you need any help open the issue in here.

### Features

* Built for Jekyll

  > Built in version 3.8.5
* Compatible with GitHub, GitLab and Netlify Pages
* Featured Posts
* Index Pagination
* Post Categories

  > `categories/name`
* Prev/Next Link
* Category Archives (this is not yet compatible with GitHub Pages though)

  > compatible with Netlify and GitLab Pages
* **Integrations**:

  * Disqus Comments
  * Google Analytics
  * ShareThis Integration
  * Formspree.io Contact
* **Design Features**:

  * Bootstrap v4.0.0‑alpha.6
  * Font Awesome
  * Masonry
* **Layouts**:

  * Default
  * Sticky Sidebar
  * Page
  * Archive

#### How to Use

Let’s move on to using Prasad template in Jekyll:

1. Download or Fork `kany/Prasad`.
2. In your local project, open `_config.yml`.

   * If your site is in root, set `baseurl: /`.
   * Also update your Google Analytics code, Disqus username, ShareThis code, etc.
3. Install required plugins:

   ```bash
   gem install jekyll-paginate  
   gem install jekyll-archives  
   gem install jekyll-seo-tag
   ```
4. Customize these files:

   * `default.html` – header & footer
   * `index.html` – homepage
   * `contact.html` – contact form (via Formspree or your provider)

     > Suitable for any third party Contact form service provider.
   * `includes/sidebar.html` – post sidebar (referrals/ads, can disable sticky)
   * `includes/newsletter.html` – signup form (e.g. REVUE newsletter)
   * `Search/index.html` – blog search (using Lunr.js)
5. Start blogging by adding `.md` files in `_posts`.
6. Use YAML front matter in posts:

   ```yaml
   ---
   layout: post
   title: "We all wait for summer"
   author: john
   categories: [Jekyll, tutorial]
   image: assets/images/1.jpg
   featured: true
   permalink: /blog/permalinks-setup/
   ---
   ```

   For pages:

   ```yaml
   ---
   layout: page
   title: Prasad Template for Jekyll
   comments: true
   ---
   ```

   Post options:

   * `featured: true`
   * `image: <path>`
   * `comments: true`
   * `description: "…" ` (optional)
   * `permalink: /…/` (optional, overrides `_config.yml`)
7. SEO: uses `jekyll-seo-tag` plugin—see its docs for details.
8. Deploy options:

   * **GitLab**: add `.gitlab-ci.yml`
   * **Netlify**: follow Netlify docs

> All the images posted here are for blog demo purpose only.
> Please enable JavaScript to view the comments powered by Disqus.

## License

[MIT](LICENSE.txt)
