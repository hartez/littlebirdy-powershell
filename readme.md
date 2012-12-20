#LittleBirdy for PowerShell

This is a PowerShell version of [LittleBirdy](https://github.com/jakepetroules/littlebirdy) for Windows users. It uses [GhostScript](http://www.ghostscript.com/) to strip permissions from PDF files. Take a look at the readme section of the original project for the history and the reason behind the name.

##Why would I want to do that? 

Sometimes, either by accident or design, people set the permissions on a PDF to not allow editing. This is a pain if you're like me, and prefer to sign PDF documents using a tool like [PDFPen](http://smilesoftware.com/PDFpen/index.html) (instead of wasting paper by printing out the document, signing it, and then scanning it back in).

GhostScript allows you to strip these permissions from a PDF, and the original LittleBirdy script makes GhostScript easy to use for this purpose. 

##Why do I need this version?

The original LittleBirdy script is written for bash. This version is written for PowerShell, which you probably already have installed if you're on a Windows box. If you're on another OS (Mac, Linux, etc.) then you probably want the original.

## Does this version remove document passwords?

Nope. I just wrote this because I needed to remove edit permissions on some PDFs so I could sign them. I didn't bother implementing the document password feature from the original version. But feel free to add that in a submit a pull request. 

