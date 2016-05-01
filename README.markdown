Citation Form
-------------

This is a simple **Apple services menu** item to help abbreviate case names in legal citations.

I take no responsibility for the wisdom or the quality of these abbreviations.  Some are amazingly ugly; many are nearly inscrutable.  But these are patterned from the canonical list that other lawyers follow.  And as with many things in our fashion-focused profession, we value staying with the pack, even when it hurts.

The current version of this list was coded by hand for my own use; it does not reflect anyone's official style. A future version of this script will adopt the abbreviations table from [*The Indigo Book*](https://github.com/legalmakers/indigo-book/).

# Who can use this?

You need to:

* be a Mac OS X user (with a system version of at least 10.6);

* be willing to walk through a brief installation process (more than one click, but not much more); and

* use software that is friendly to the built-in Services menu, such as Apple's Pages word processor or a recent version of Microsoft Word.

I've confirmed that this script works in Pages and in the latest version of Microsoft Word, running on the latest version of the Mac OS (El Capitan).

# How to install

You will be creating a new entry in the "Services" menu, which appears in the menu in compatible applications. This is done using Automator, which comes installed by default.

1. Open the Automator program (which is easiest to find through spotlight search).  Now select "Service" as what you're trying to create.

1. The default should be a text-based service.  That's correct.  Please also check the box signaling that you want to "replace selected text."

2. From the library of possible actions on the left, find the entry for "Run Shell Script."  Then drag that over to the work area on the right.

3. I wrote my script in a language called Ruby.  So you want to select "/usr/bin/ruby" from that little drop-down menu on the right.

4. Copy the text of the script `citation-form.rb` and paste those contents into the script editing box just below the selections you've just made, replacing the placeholder text (the text that by default begins `ARGF`). If you are reading this on the web, you can get to that code directly through [this link](https://raw.githubusercontent.com/doncruse/citation-form/master/citation-form.rb). If you have downloaded this repository, be sure to do the copying-and-pasting from a text editor that does not insert extra characters that might confuse the code. (TextEdit works fine; Word likely does not).

5. You are almost done. Save this automator action as you would any other file (by using command-S using the File menu), giving it the name you want to appear in the Services menu.  I chose "Abbreviate Case Name"; you can choose whatever you'd like.

*At this point, you can access the script by using the menus. If you'd like to have a keyboard shortcut, then there is one more step to take.*

6. (Optional)  Now open up the System Preferences pane, choose Keyboard, then make a new keyboard shortcut for this service.  (I chose `ctrl-option-command-C`, which is natural to type on my laptop keyboard and doesn't conflict with other shortcuts built into my word processor.)

# How to use it

Just highlight the case name &mdash; and *only* the case name &mdash; and invoke the service.  

* **With a shortcut.** If you added a keyboard shortcut, just hit your key combination.  (Mine is `control-option-command-C`, the three keys to the left of my Mac laptop keyboard and the letter `C`.)  

* **Without a shortcut.** First, highlight the text you want to abbreviate. Second, look at the menu bar (at the very top of the Mac screen) for the name of your application you are using (such as Word or Pages), click that, and find the entry for `Services` in the drop-down menu. If you have selected some text, you should see the name of the service you chose in Step 5 above (I chose "Abbreviate Case Name"). Select that, and your text should be abbreviated.

Do not point this script at other text besides case names, especially not text you care about (such as the rest of your brief).

**Note:** The apostrophes in the abbreviations show up as what people commonly refer to as "dumb" quotes.  You should glance at the cites to see if you need to "smarten" them up.

# Troubleshooting

If you don't see anything, then either (a) you don't have any text highlighted or selected; (b) you're using software that does not support Services (do *any* services appear when you select text?); or (c) there was a problem with your installation.

Fixing (a) is easy.  Fixing (b) requires a different software developer to address your problem.  Fixing (c) might be tricky.  If you have problems with it, please first try repeating the steps above.  If that still doesn't work, please open an "Issue" or send me an email.

# How to suggest edits

I am particularly interested in errors that prickle the sensibility of freshly minted law clerks, such as deviations from the canons of legal citations.

If you see an error, feel free to contact me directly.  My email address and twitter handle are available on my Github profile page (http://github.com/doncruse).  Or, if you are a member of Github, feel free to submit any errors on the "Issues" page using the menu at the top of this page.  That lets other users know that a particular error has been reported, and it lets you track the progress of any fix.
