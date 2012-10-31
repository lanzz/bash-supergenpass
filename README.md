# Bash shell-script implementation of [SuperGenPass](http://supergenpass.com) password generation

### **Usage:** `./supergenpass.sh <domain> [ <length> ]`

Default `<length>` is 10, which is also the original SuperGenPass default length.

The `<domain>` parameter is also optional, but it does not make much sense to omit it.

`supergenpass.sh` will ask for your master password interactively, and it will not be displayed on your terminal.
Since it is a 24-line shell script, it is quite straightforward to just hardcode it in the script itself,
if you don't mind the security compromise.
