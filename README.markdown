Citation Form
-------------

This is a simple **Apple services menu** item to help with choosing the "correct" abbreviation in your formal legal citations.

I take no responsibility for the wisdom or the quality of these abbreviations.  Some are amazingly ugly; many are nearly inscrutable.  But these are patterned from the canonical list that other lawyers follow.  And as with many things in our fashion-focused profession, we value staying with the pack, even when it hurts.

# Who can use this?

You need to:

* be a Mac OS X user, preferably with Leopard or Snow Leopard,

* be willing to walk through a brief installation process (more than one click, but not much more); and

* use software that is friendly to the built-in Services menu, such as Apple's Pages word processor or your favorite blog editor.  (Microsoft Word 2008, however unfortunately, is not Services-friendly.)

If you're still reading, welcome! That last requirement makes this a small club. But I suspect that more and more lawyers will be using Pages as their primary word processor, both because of wider Mac adoption and because of tools such as the iPad.  Personally, I value how much more smoothly it runs on my laptop than Word and the more advanced typographic features of Pages.

I am not too optimistic that Microsoft will include compatibility with the Services menu in Word 2011.  If they do not, then it's hard for me justify using their product instead of one that I can customize.

# How to install

The short answer is that you download the **citation-form.rb** script (that's all you need) and then make a new Services menu item:

1. Open the Automator program (which is easiest to find through spotlight search).  Now select "Service" as what you're trying to create.

1. The default should be a text-based service.  That's right.  Just be sure to check the box that you want to "replace selected text."

2. From the library of possible actions on the left, you want to choose "Run Shell Script."  Then drag that over to the work area on the right.

3. I wrote my script in a language called Ruby.  So you want to select "/usr/bin/ruby" from that little drop-down menu on the right.

4. Open up my script in your text editor of choice (TextEdit works fine), then copy and paste all of it into this Run Shell Script box.

5. Save your automator action (command-S or under the File menu), giving it the name you want to appear in the Services menu.  I chose "CiteForm"; you may prefer a verb, such as "Abbreviate Case Citation" or the like.

6. (Optional)  Now open up the System Preferences pane, choose Keyboard, then make a new keyboard shortcut for this service.  (I chose ctrl-option-command-C, which works well on my laptop and doesn't conflict with other shortcuts built into my word processor.)

If you want the longer step-by-step, with pictures... that's something I will do if people request it.

# How to use it

Just highlight the case name and then invoke the service.  If you added a keyboard shortcut, just hit your key combination.  (Mine is control-option-command-C.)  If not, you can find the name under the "Services" menu in the drop-down menu beneath the name of the software that holds your text.

**Note:** The apostrophes in the abbreviations show up as what people commonly refer to as "dumb" quotes.  You should glance at the cites to see if you need to "smarten" them up.

# Troubleshooting

If you don't see anything, then either (a) you don't have text highlighted or selected; (b) you're using software that does not support Services (do *any* services appear?); or (c) there was a problem with your installation.

Fixing (a) is obvious.  Fixing (b) requires someone to hear your cries in Redmond, Washington.  Fixing (c) might be tricky.  If you have problems with it, please first try repeating the steps above.  If that still doesn't work, please open an "Issue" or send me an email.

# How to suggest edits

I am particularly interested in errors that prickle the sensibility of freshly minted law clerks, such as deviations from the canons of legal citations.

If you see an error, feel free to contact me directly.  My email address and twitter handle are available on my Github profile page (http://github.com/doncruse).  Or, if you are a member of Github, feel free to submit any errors on the "Issues" page using the menu at the top of this page.  That lets other users know that a particular error has been reported, and it lets you track the progress of any fix.