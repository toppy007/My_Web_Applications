# Using links

_**This is a Makers Vine.** Vines are designed to gradually build up sophisticated skills. They contain a mixture of text and video, and may contain some challenge exercises without proposed solutions. [Read more about how to use Makers
Vines.](https://github.com/makersacademy/course/blob/main/labels/vines.md)_

Learn to use HTML links to make the browser send `GET` requests.

## Intro

Let's consider the following situation. We have two routes:
  * `GET /` is the "root", returning HTML code — in other words, it is the website homepage.
  * `GET /about` is another route, returning some different HTML — it's a different page.

The web browser can send requests to these two routes separately.

However, when building websites, we don't want users to manually enter a new URL every time they need to go to a different page. We need a way to "tell" the browser when to send a new request to a different page.

We use **hypertext links**, or **anchor links** for this. A link is an HTML tag that will be rendered as a hypertext link by the browser, so the user can click on it. This link points to a different URL. When the user clicks, the browser will send a new `GET` request to that URL, and eventually the page will change.

The `<a>` HTML tag is used to create links. The attribute `href` tells the browser which path it should send the next request to, when that link is clicked.

```html
<a href="/about">Go to the about page</a>
```

When the above link is clicked, the browser will send a new request `GET /about` to the server.

## Using the browser developer tools

Most browsers [have integrated developer tools](../pills/use_the_developer_console.md) that we can use to inspect the HTTP requests sent by the browser, and the responses it receives. Learning how to use it can be really helpful when we need to get visibility into what the browser sends and gets back through its HTTP connection with the web server.

When creating links between "pages", keep the developer tools open in the browser, so you can see the HTTP request being logged, and inspect its information.

## Demonstration

[Video Demonstration](https://www.youtube.com/watch?v=QwqPrxRqWu8)

## Exercise

Test-drive and implement the following change to the `music_library_database_app` project:

The page returned by `GET /albums` should contain a link for each album listed. It should link to `/albums/:id`, where `:id` is the corresponding album's id.

Run the server and make sure you can navigate, using your browser, from the albums list page to the single album page.

[Example solution](https://youtu.be/QwqPrxRqWu8?t=625)

## Challenge

This is a process feedback challenge. That means you should record yourself doing it and
submit that recording to your coach for feedback. [How do I do
this?](https://github.com/makersacademy/golden-square/blob/main/pills/process_feedback_challenges.md)

**For this challenge, you should only record the 3rd part where you create the diagram.** Make sure you also record yourself talking out loud when making the diagram, to explain it.

Test-drive and implement the following changes to the `music_library_database_app` project.

1. **Test-drive** a route `GET /artists/:id` which returns an HTML page showing details for a single artist.
2. **Test-drive** a route `GET /artists` which returns an HTML page with the list of artists. This page should contain a link for each artist listed, linking to `/artists/:id` where `:id` needs to be the corresponding artist id.
3. **Create a sequence diagram** explaining the behaviour of your program when a request is sent to `GET /artists/:id`. Make sure your diagram all includes the following:
    * The HTTP Client
    * The HTTP Request and the data it contains
    * The HTTP Response and the data it contains
    * The Application class (`app.rb`)
    * The Repository class (`artist_repository.rb`)
    * The View (ERB file)
    * The Database


[After you're done, submit your code and recording here](https://airtable.com/shr6mk28x0fy3OrxN?prefill_Item=web_as03_v2).

[Next Challenge](04_using_forms.md)

<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=html_challenges%2F03_using_links.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=html_challenges%2F03_using_links.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=html_challenges%2F03_using_links.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=html_challenges%2F03_using_links.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fweb-applications&prefill_File=html_challenges%2F03_using_links.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->