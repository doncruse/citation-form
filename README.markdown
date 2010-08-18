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

The first step is downloading the **citation-form.rb** script.


### in the Services menu

To add this as a service, we need to fire up a program called Automator. The easiest way to locate it is through the spotlight search &mdash; just type in "Automator."

Once you've launched it, you should be treated to this little guy in your dock:

<img align = "center" src="http://www.github.com/doncruse/citation-form/howto/automator-dude.png" alt="Automator icon"/>

And your screen should include this startup menu:

<img align="center" src="howto/automator-menu.png" alt="Main Automator menu"/>

Select "Service" as the type of automator action that you want to create.  Then click "Choose" (lower right) to continue.

Now you should see a blank automator action.  The default (lucky for us) is to have a service that focuses on *text*, which is exactly what we want.  But be sure to put a check in the little box that says "replace "

### as a keyboard shortcut

TO COME

# How to use it

Just highlight the case name and then invoke the service.  If you added a keyboard shortcut, just hit those keys.  If not, you can find the service under the "Services" menu in the drop-down menu beneath the name of the software that holds your text.

You'll want to make sure that the apostrophe symbols are to your liking.  If you prefer smart quotes, you may have to replace them manually.

# Troubleshooting

If you don't see anything, then either (a) you don't have text highlighted or selected; (b) you're using software that does not support Services (do *any* services appear?); or (c) there was a problem with your installation.

Fixing (a) is obvious.  Fixing (b) requires someone to hear your cries in Redmond, Washington.  Fixing (c) might be tricky.  If you have problems with it, please first try repeating the steps above.  If that still doesn't work, please open an "Issue" or send me an email.

# How to suggest edits

I am particularly interested in errors that prickle the sensibility of freshly minted law clerks, such as deviations from the canons of legal citations.

If you see an error, feel free to contact me directly.  My email address and twitter handle are available on my Github profile page (http://github.com/doncruse).  Or, if you are a member of Github, feel free to submit any errors on the "Issues" page using the menu at the top of this page.  That lets other users know that a particular error has been reported, and it lets you track the progress of any fix.