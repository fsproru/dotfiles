;;; jabber-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (jabber-info jabber-customize jabber-debug-keep-process-buffers
;;;;;;  jabber-debug-log-xml jabber-default-priority jabber-default-status
;;;;;;  jabber-default-show jabber-account-list) "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber"
;;;;;;  "jabber.el" "5b867ac802d7c0928aa99e2e0a758646")
;;; Generated autoloads from jabber.el

(defvar jabber-account-list nil "\
List of Jabber accounts.
Each element of the list is a cons cell describing a Jabber account,
where the car is a JID and the CDR is an alist.

JID is a full Jabber ID string (e.g. foo@bar.tld). You can also
specify the resource (e.g. foo@bar.tld/emacs).
The following keys can be present in the alist:
:password is a string to authenticate ourself against the server.
It can be empty.
:network-server is a string identifying the address to connect to,
if it's different from the server part of the JID.
:port is the port to use (default depends on connection type).
:connection-type is a symbol. Valid symbols are `starttls',
`network' and `ssl'.

Only JID is mandatory.  The rest can be guessed at run-time.

Examples:

Two accounts without any special configuration:
\((\"foo@example.com\") (\"bar@example.net\"))

One disabled account with a non-standard port:
\((\"romeo@montague.net\" (:port . 5242) (:disabled . t)))

If you don't have SRV and STARTTLS capabilities in your Emacs,
configure a Google Talk account like this:
\((\"username@gmail.com\" 
  (:network-server . \"talk.google.com\")
  (:connection-type . ssl)))")

(custom-autoload 'jabber-account-list "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber" t)

(defvar jabber-default-show "" "\
default show state")

(custom-autoload 'jabber-default-show "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber" t)

(defvar jabber-default-status "" "\
default status string")

(custom-autoload 'jabber-default-status "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber" t)

(defvar jabber-default-priority 10 "\
default priority")

(custom-autoload 'jabber-default-priority "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber" t)

(defvar *jabber-current-status* nil "\
the users current presence status")

(defvar *jabber-current-show* nil "\
the users current presence show")

(defvar *jabber-current-priority* nil "\
the user's current priority")

(defvar jabber-debug-log-xml nil "\
log all XML i/o in *-jabber-xml-log-JID-*")

(custom-autoload 'jabber-debug-log-xml "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber" t)

(defvar jabber-debug-keep-process-buffers nil "\
If nil, kill process buffers when the process dies.
Contents of process buffers might be useful for debugging.")

(custom-autoload 'jabber-debug-keep-process-buffers "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber" t)

(defconst jabber-presence-faces '(("" . jabber-roster-user-online) ("away" . jabber-roster-user-away) ("xa" . jabber-roster-user-xa) ("dnd" . jabber-roster-user-dnd) ("chat" . jabber-roster-user-chatty) ("error" . jabber-roster-user-error) (nil . jabber-roster-user-offline)) "\
Mapping from presence types to faces")

(autoload 'jabber-customize "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber" "\
customize jabber options

\(fn)" t nil)

(autoload 'jabber-info "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber" "\
open jabber.el manual

\(fn)" t nil)

;;;***

;;;### (autoloads (jabber-activity-mode) "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-activity"
;;;;;;  "jabber-activity.el" "b64c02868053f642f574cdc4dbe290f4")
;;; Generated autoloads from jabber-activity.el

(defvar jabber-activity-mode t "\
Non-nil if Jabber-Activity mode is enabled.
See the command `jabber-activity-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `jabber-activity-mode'.")

(custom-autoload 'jabber-activity-mode "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-activity" nil)

(autoload 'jabber-activity-mode "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-activity" "\
Toggle display of activity in hidden jabber buffers in the mode line.

With a numeric arg, enable this display if arg is positive.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (jabber-autoaway-start) "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-autoaway"
;;;;;;  "jabber-autoaway.el" "0f3bc297aa353ddd41870b7459b7494a")
;;; Generated autoloads from jabber-autoaway.el

(autoload 'jabber-autoaway-start "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-autoaway" "\
Start autoaway timer.
The IGNORED argument is there so you can put this function in
`jabber-post-connect-hooks'.

\(fn &optional IGNORED)" t nil)

;;;***

;;;### (autoloads (jabber-edit-bookmarks jabber-get-bookmarks-from-cache
;;;;;;  jabber-get-bookmarks jabber-parse-conference-bookmark jabber-get-conference-data)
;;;;;;  "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-bookmarks"
;;;;;;  "jabber-bookmarks.el" "30e8d977d85f4dffd249dc589717083e")
;;; Generated autoloads from jabber-bookmarks.el

(autoload 'jabber-get-conference-data "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-bookmarks" "\
Get bookmark data for CONFERENCE-JID.
KEY may be nil or one of :name, :autojoin, :nick and :password.
If KEY is nil, a plist containing the above keys is returned.
CONT is called when the result is available, with JC and the
result as arguments.  If CONT is nil, return the requested data
immediately, and return nil if it is not in the cache.

\(fn JC CONFERENCE-JID CONT &optional KEY)" nil nil)

(autoload 'jabber-parse-conference-bookmark "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-bookmarks" "\
Convert a <conference/> tag into a plist.
The plist may contain the keys :jid, :name, :autojoin,
:nick and :password.

\(fn NODE)" nil nil)

(autoload 'jabber-get-bookmarks "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-bookmarks" "\
Retrieve bookmarks (if needed) and call CONT.
Arguments to CONT are JC and the bookmark list.  CONT will be
called as the result of a filter function or a timer.
If REFRESH is non-nil, always fetch bookmarks.

\(fn JC CONT &optional REFRESH)" nil nil)

(autoload 'jabber-get-bookmarks-from-cache "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-bookmarks" "\
Return cached bookmarks for JC.
If bookmarks have not yet been fetched by `jabber-get-bookmarks',
return nil.

\(fn JC)" nil nil)

(autoload 'jabber-edit-bookmarks "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-bookmarks" "\
Create a buffer for editing bookmarks interactively.

\(fn JC)" t nil)

;;;***

;;;### (autoloads (jabber-chat-get-buffer) "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-chat"
;;;;;;  "jabber-chat.el" "f349558c11c7b9ce7b4ed5e03f99d5d8")
;;; Generated autoloads from jabber-chat.el

(defvar jabber-chatting-with nil "\
JID of the person you are chatting with")

(autoload 'jabber-chat-get-buffer "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-chat" "\
Return the chat buffer for chatting with CHAT-WITH (bare or full JID).
Either a string or a buffer is returned, so use `get-buffer' or
`get-buffer-create'.

\(fn CHAT-WITH)" nil nil)

;;;***

;;;### (autoloads nil "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-chatbuffer"
;;;;;;  "jabber-chatbuffer.el" "ca2536495a59636062df01d9a379e798")
;;; Generated autoloads from jabber-chatbuffer.el

(defvar jabber-buffer-connection nil "\
The connection used by this buffer.")

(make-variable-buffer-local 'jabber-buffer-connection)

;;;***

;;;### (autoloads (jabber-compose) "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-compose"
;;;;;;  "jabber-compose.el" "2d7d172070c6604667cb20e7f6808401")
;;; Generated autoloads from jabber-compose.el

(autoload 'jabber-compose "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-compose" "\
Create a buffer for composing a Jabber message.

\(fn JC &optional RECIPIENT)" t nil)

;;;***

;;;### (autoloads nil "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-core"
;;;;;;  "jabber-core.el" "9651f9fceaba17e7cfed2149a535bd4d")
;;; Generated autoloads from jabber-core.el
 (autoload 'jabber-connect-all "jabber" "Connect to all configured Jabber accounts.\nSee `jabber-account-list'.\nIf no accounts are configured (or ARG supplied), call `jabber-connect' interactively." t)
 (autoload 'jabber-connect "jabber" "Connect to the Jabber server and start a Jabber XML stream.\nWith prefix argument, register a new account.\nWith double prefix argument, specify more connection details." t)

;;;***

;;;### (autoloads (jabber-import-roster jabber-export-roster) "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-export"
;;;;;;  "jabber-export.el" "43a2aa4c62d0beeb1a47c5828d700b8f")
;;; Generated autoloads from jabber-export.el

(autoload 'jabber-export-roster "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-export" "\
Export roster for connection JC.

\(fn JC)" t nil)

(autoload 'jabber-import-roster "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-export" "\
Create buffer for roster import for connection JC from FILE.

\(fn JC FILE)" t nil)

;;;***

;;;### (autoloads (jabber-gmail-query jabber-gmail-subscribe) "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-gmail"
;;;;;;  "jabber-gmail.el" "d85d78e4fbba23aac71680d8e7ace175")
;;; Generated autoloads from jabber-gmail.el

(autoload 'jabber-gmail-subscribe "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-gmail" "\
Subscribe to gmail notifications.
See http://code.google.com/apis/talk/jep_extensions/usersettings.html#4

\(fn JC)" t nil)

(autoload 'jabber-gmail-query "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-gmail" "\
Request mail information from the Google Talk server (a.k.a. one shot query).
See http://code.google.com/apis/talk/jep_extensions/gmail.html#requestmail

\(fn JC)" t nil)

;;;***

;;;### (autoloads (jabber-whitespace-ping-start jabber-whitespace-ping-interval
;;;;;;  jabber-keepalive-start jabber-keepalive-timeout jabber-keepalive-interval
;;;;;;  jabber-keepalive) "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-keepalive"
;;;;;;  "jabber-keepalive.el" "c38fd384eee8471db86fa10296266a04")
;;; Generated autoloads from jabber-keepalive.el

(let ((loads (get 'jabber-keepalive 'custom-loads))) (if (member '"../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-keepalive" loads) nil (put 'jabber-keepalive 'custom-loads (cons '"../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-keepalive" loads))))

(defvar jabber-keepalive-interval 600 "\
Interval in seconds between connection checks.")

(custom-autoload 'jabber-keepalive-interval "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-keepalive" t)

(defvar jabber-keepalive-timeout 20 "\
Seconds to wait for response from server.")

(custom-autoload 'jabber-keepalive-timeout "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-keepalive" t)

(autoload 'jabber-keepalive-start "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-keepalive" "\
Activate keepalive.
That is, regularly send a ping request to the server, and
disconnect if it doesn't answer.  See `jabber-keepalive-interval'
and `jabber-keepalive-timeout'.

The JC argument makes it possible to add this function to
`jabber-post-connect-hooks'; it is ignored.  Keepalive is activated
for all accounts regardless of the argument.

\(fn &optional JC)" t nil)

(defvar jabber-whitespace-ping-interval 30 "\
Send a space character to the server with this interval, in seconds.

This is a traditional remedy for a number of problems: to keep NAT
boxes from considering the connection dead, to have the OS discover
earlier that the connection is lost, and to placate servers which rely
on the client doing this, e.g. Openfire.

If you want to verify that the server is able to answer, see
`jabber-keepalive-start' for another mechanism.")

(custom-autoload 'jabber-whitespace-ping-interval "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-keepalive" t)

(autoload 'jabber-whitespace-ping-start "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-keepalive" "\
Start sending whitespace pings at regular intervals.
See `jabber-whitespace-ping-interval'.

The JC argument is ignored; whitespace pings are enabled for all
accounts.

\(fn &optional JC)" t nil)

;;;***

;;;### (autoloads nil "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-keymap"
;;;;;;  "jabber-keymap.el" "0cbace27aa2aa51bd9cfa485bb3c0c03")
;;; Generated autoloads from jabber-keymap.el

(defvar jabber-global-keymap (let ((map (make-sparse-keymap))) (define-key map "" 'jabber-connect-all) (define-key map "" 'jabber-disconnect) (define-key map "" 'jabber-switch-to-roster-buffer) (define-key map "\n" 'jabber-chat-with) (define-key map "\f" 'jabber-activity-switch-to) (define-key map "" 'jabber-send-away-presence) (define-key map "" 'jabber-send-default-presence) (define-key map "" 'jabber-send-xa-presence) (define-key map "" 'jabber-send-presence) map) "\
Global Jabber keymap (usually under C-x C-j)")

(define-key ctl-x-map "\n" jabber-global-keymap)

;;;***

;;;### (autoloads (jabber-display-menu) "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-menu"
;;;;;;  "jabber-menu.el" "c9f73781acb3a41b7a1fc0f09c8e071d")
;;; Generated autoloads from jabber-menu.el

(defvar jabber-menu (let ((map (make-sparse-keymap "jabber-menu"))) (define-key map [jabber-menu-connect] '("Connect" . jabber-connect-all)) (define-key map [jabber-menu-disconnect] '("Disconnect" . jabber-disconnect)) (define-key map [jabber-menu-roster] '("Switch to roster" . jabber-switch-to-roster-buffer)) (define-key map [jabber-menu-customize] '("Customize" . jabber-customize)) (define-key map [jabber-menu-info] '("Help" . jabber-info)) (define-key map [jabber-menu-status] (cons "Set Status" (make-sparse-keymap "set-status"))) (define-key map [jabber-menu-status jabber-menu-status-chat] '("Chatty" lambda nil (interactive) (jabber-send-presence "chat" (jabber-read-with-input-method "status message: " *jabber-current-status* '*jabber-status-history*) *jabber-current-priority*))) (define-key map [jabber-menu-status jabber-menu-status-dnd] '("Do not Disturb" lambda nil (interactive) (jabber-send-presence "dnd" (jabber-read-with-input-method "status message: " *jabber-current-status* '*jabber-status-history*) *jabber-current-priority*))) (define-key map [jabber-menu-status jabber-menu-status-xa] '("Extended Away" . jabber-send-xa-presence)) (define-key map [jabber-menu-status jabber-menu-status-away] '("Away" . jabber-send-away-presence)) (define-key map [jabber-menu-status jabber-menu-status-online] '("Online" . jabber-send-default-presence)) map))

(defvar jabber-display-menu 'maybe "\
Decide whether the \"Jabber\" menu is displayed in the menu bar.
If t, always display.
If nil, never display.
If maybe, display if any of `jabber-account-list' or `jabber-connections'
is non-nil.")

(custom-autoload 'jabber-display-menu "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-menu" t)

(define-key-after (lookup-key global-map [menu-bar]) [jabber-menu] (list 'menu-item "Jabber" jabber-menu :visible '(or (eq jabber-display-menu t) (and (eq jabber-display-menu 'maybe) (or jabber-account-list (bound-and-true-p jabber-connections))))))

;;;***

;;;### (autoloads (jabber-muc-private-message-p jabber-muc-sender-p
;;;;;;  jabber-muc-message-p jabber-muc-private-get-buffer jabber-muc-get-buffer
;;;;;;  jabber-muc-autojoin jabber-muc-default-nicknames) "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-muc"
;;;;;;  "jabber-muc.el" "56bd486f1dc9b14623977e3dda52a0f7")
;;; Generated autoloads from jabber-muc.el

(defvar *jabber-active-groupchats* nil "\
alist of groupchats and nicknames
Keys are strings, the bare JID of the room.
Values are strings.")

(defvar jabber-muc-default-nicknames nil "\
Default nickname for specific MUC rooms.")

(custom-autoload 'jabber-muc-default-nicknames "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-muc" t)

(defvar jabber-muc-autojoin nil "\
List of MUC rooms to automatically join on connection.
This list is saved in your Emacs customizations.  You can also store
such a list on the Jabber server, where it is available to every
client; see `jabber-edit-bookmarks'.")

(custom-autoload 'jabber-muc-autojoin "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-muc" t)

(defvar jabber-muc-printers 'nil "\
List of functions that may be able to print part of a MUC message.
This gets prepended to `jabber-chat-printers', which see.")

(autoload 'jabber-muc-get-buffer "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-muc" "\
Return the chat buffer for chatroom GROUP.
Either a string or a buffer is returned, so use `get-buffer' or
`get-buffer-create'.

\(fn GROUP)" nil nil)

(autoload 'jabber-muc-private-get-buffer "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-muc" "\
Return the chat buffer for private chat with NICKNAME in GROUP.
Either a string or a buffer is returned, so use `get-buffer' or
`get-buffer-create'.

\(fn GROUP NICKNAME)" nil nil)

(autoload 'jabber-muc-message-p "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-muc" "\
Return non-nil if MESSAGE is a groupchat message.
That does not include private messages in a groupchat, but does
include groupchat invites.

\(fn MESSAGE)" nil nil)

(autoload 'jabber-muc-sender-p "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-muc" "\
Return non-nil if JID is a full JID of an MUC participant.

\(fn JID)" nil nil)

(autoload 'jabber-muc-private-message-p "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-muc" "\
Return non-nil if MESSAGE is a private message in a groupchat.

\(fn MESSAGE)" nil nil)

;;;***

;;;### (autoloads (jabber-muc-looks-like-personal-p) "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-muc-nick-completion"
;;;;;;  "jabber-muc-nick-completion.el" "9ad191fc4b3bafdca5660f69a2fafa8c")
;;; Generated autoloads from jabber-muc-nick-completion.el

(autoload 'jabber-muc-looks-like-personal-p "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-muc-nick-completion" "\
Return non-nil if jabber MESSAGE is addresed to me.
Optional argument GROUP to look.

\(fn MESSAGE &optional GROUP)" nil nil)

;;;***

;;;### (autoloads (jabber-send-default-presence jabber-send-presence)
;;;;;;  "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-presence"
;;;;;;  "jabber-presence.el" "7868b830d4da255b13953d66c037cefb")
;;; Generated autoloads from jabber-presence.el

(autoload 'jabber-send-presence "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-presence" "\
Set presence for all accounts.

\(fn SHOW STATUS PRIORITY)" t nil)

(autoload 'jabber-send-default-presence "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-presence" "\
Send default presence.
Default presence is specified by `jabber-default-show',
`jabber-default-status', and `jabber-default-priority'.

\(fn &optional IGNORE)" t nil)

;;;***

;;;### (autoloads (jabber-private-set jabber-private-get) "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-private"
;;;;;;  "jabber-private.el" "4c6dbde85cee0c2a65da41ce509afa8d")
;;; Generated autoloads from jabber-private.el

(autoload 'jabber-private-get "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-private" "\
Retrieve an item from private XML storage.
The item to retrieve is identified by NODE-NAME (a symbol) and
NAMESPACE (a string).

On success, SUCCESS-CALLBACK is called with JC and the retrieved
XML fragment.

On error, ERROR-CALLBACK is called with JC and the entire IQ
result.

\(fn JC NODE-NAME NAMESPACE SUCCESS-CALLBACK ERROR-CALLBACK)" nil nil)

(autoload 'jabber-private-set "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-private" "\
Store FRAGMENT in private XML storage.
SUCCESS-CALLBACK, SUCCESS-CLOSURE-DATA, ERROR-CALLBACK and
ERROR-CLOSURE-DATA are used as in `jabber-send-iq'.

\(fn JC FRAGMENT &optional SUCCESS-CALLBACK SUCCESS-CLOSURE-DATA ERROR-CALLBACK ERROR-CLOSURE-DATA)" nil nil)

;;;***

;;;### (autoloads (jabber-roster-update jabber-switch-to-roster-buffer)
;;;;;;  "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-roster"
;;;;;;  "jabber-roster.el" "cd48f54a7c92b6371872732d0d577f57")
;;; Generated autoloads from jabber-roster.el

(autoload 'jabber-switch-to-roster-buffer "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-roster" "\
Switch to roster buffer.
Optional JC argument is ignored; it's there so this function can
be used in `jabber-post-connection-hooks'.

\(fn &optional JC)" t nil)

(autoload 'jabber-roster-update "../../../Documents/projects/fsproru/dotfiles/symlink/emacs.d/elpa/jabber-0.8.90/jabber-roster" "\
Update roster, in memory and on display.
Add NEW-ITEMS, update CHANGED-ITEMS and remove DELETED-ITEMS, all
three being lists of JID symbols.

\(fn JC NEW-ITEMS CHANGED-ITEMS DELETED-ITEMS)" nil nil)

;;;***

;;;### (autoloads (jabber-info jabber-customize jabber-debug-keep-process-buffers
;;;;;;  jabber-debug-log-xml jabber-default-priority jabber-default-status
;;;;;;  jabber-default-show jabber-account-list) "jabber" "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber.el"
;;;;;;  "5b867ac802d7c0928aa99e2e0a758646")
;;; Generated autoloads from ../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber.el

(defvar jabber-account-list nil "\
List of Jabber accounts.
Each element of the list is a cons cell describing a Jabber account,
where the car is a JID and the CDR is an alist.

JID is a full Jabber ID string (e.g. foo@bar.tld). You can also
specify the resource (e.g. foo@bar.tld/emacs).
The following keys can be present in the alist:
:password is a string to authenticate ourself against the server.
It can be empty.
:network-server is a string identifying the address to connect to,
if it's different from the server part of the JID.
:port is the port to use (default depends on connection type).
:connection-type is a symbol. Valid symbols are `starttls',
`network' and `ssl'.

Only JID is mandatory.  The rest can be guessed at run-time.

Examples:

Two accounts without any special configuration:
\((\"foo@example.com\") (\"bar@example.net\"))

One disabled account with a non-standard port:
\((\"romeo@montague.net\" (:port . 5242) (:disabled . t)))

If you don't have SRV and STARTTLS capabilities in your Emacs,
configure a Google Talk account like this:
\((\"username@gmail.com\" 
  (:network-server . \"talk.google.com\")
  (:connection-type . ssl)))")

(custom-autoload 'jabber-account-list "jabber" t)

(defvar jabber-default-show "" "\
default show state")

(custom-autoload 'jabber-default-show "jabber" t)

(defvar jabber-default-status "" "\
default status string")

(custom-autoload 'jabber-default-status "jabber" t)

(defvar jabber-default-priority 10 "\
default priority")

(custom-autoload 'jabber-default-priority "jabber" t)

(defvar *jabber-current-status* nil "\
the users current presence status")

(defvar *jabber-current-show* nil "\
the users current presence show")

(defvar *jabber-current-priority* nil "\
the user's current priority")

(defvar jabber-debug-log-xml nil "\
log all XML i/o in *-jabber-xml-log-JID-*")

(custom-autoload 'jabber-debug-log-xml "jabber" t)

(defvar jabber-debug-keep-process-buffers nil "\
If nil, kill process buffers when the process dies.
Contents of process buffers might be useful for debugging.")

(custom-autoload 'jabber-debug-keep-process-buffers "jabber" t)

(defconst jabber-presence-faces '(("" . jabber-roster-user-online) ("away" . jabber-roster-user-away) ("xa" . jabber-roster-user-xa) ("dnd" . jabber-roster-user-dnd) ("chat" . jabber-roster-user-chatty) ("error" . jabber-roster-user-error) (nil . jabber-roster-user-offline)) "\
Mapping from presence types to faces")

(autoload 'jabber-customize "jabber" "\
customize jabber options

\(fn)" t nil)

(autoload 'jabber-info "jabber" "\
open jabber.el manual

\(fn)" t nil)

;;;***

;;;### (autoloads (jabber-activity-mode) "jabber-activity" "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-activity.el"
;;;;;;  "b64c02868053f642f574cdc4dbe290f4")
;;; Generated autoloads from ../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-activity.el

(defvar jabber-activity-mode t "\
Non-nil if Jabber-Activity mode is enabled.
See the command `jabber-activity-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `jabber-activity-mode'.")

(custom-autoload 'jabber-activity-mode "jabber-activity" nil)

(autoload 'jabber-activity-mode "jabber-activity" "\
Toggle display of activity in hidden jabber buffers in the mode line.

With a numeric arg, enable this display if arg is positive.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (jabber-autoaway-start) "jabber-autoaway" "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-autoaway.el"
;;;;;;  "0f3bc297aa353ddd41870b7459b7494a")
;;; Generated autoloads from ../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-autoaway.el

(autoload 'jabber-autoaway-start "jabber-autoaway" "\
Start autoaway timer.
The IGNORED argument is there so you can put this function in
`jabber-post-connect-hooks'.

\(fn &optional IGNORED)" t nil)

;;;***

;;;### (autoloads (jabber-edit-bookmarks jabber-get-bookmarks-from-cache
;;;;;;  jabber-get-bookmarks jabber-parse-conference-bookmark jabber-get-conference-data)
;;;;;;  "jabber-bookmarks" "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-bookmarks.el"
;;;;;;  "30e8d977d85f4dffd249dc589717083e")
;;; Generated autoloads from ../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-bookmarks.el

(autoload 'jabber-get-conference-data "jabber-bookmarks" "\
Get bookmark data for CONFERENCE-JID.
KEY may be nil or one of :name, :autojoin, :nick and :password.
If KEY is nil, a plist containing the above keys is returned.
CONT is called when the result is available, with JC and the
result as arguments.  If CONT is nil, return the requested data
immediately, and return nil if it is not in the cache.

\(fn JC CONFERENCE-JID CONT &optional KEY)" nil nil)

(autoload 'jabber-parse-conference-bookmark "jabber-bookmarks" "\
Convert a <conference/> tag into a plist.
The plist may contain the keys :jid, :name, :autojoin,
:nick and :password.

\(fn NODE)" nil nil)

(autoload 'jabber-get-bookmarks "jabber-bookmarks" "\
Retrieve bookmarks (if needed) and call CONT.
Arguments to CONT are JC and the bookmark list.  CONT will be
called as the result of a filter function or a timer.
If REFRESH is non-nil, always fetch bookmarks.

\(fn JC CONT &optional REFRESH)" nil nil)

(autoload 'jabber-get-bookmarks-from-cache "jabber-bookmarks" "\
Return cached bookmarks for JC.
If bookmarks have not yet been fetched by `jabber-get-bookmarks',
return nil.

\(fn JC)" nil nil)

(autoload 'jabber-edit-bookmarks "jabber-bookmarks" "\
Create a buffer for editing bookmarks interactively.

\(fn JC)" t nil)

;;;***

;;;### (autoloads (jabber-chat-get-buffer) "jabber-chat" "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-chat.el"
;;;;;;  "f349558c11c7b9ce7b4ed5e03f99d5d8")
;;; Generated autoloads from ../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-chat.el

(defvar jabber-chatting-with nil "\
JID of the person you are chatting with")

(autoload 'jabber-chat-get-buffer "jabber-chat" "\
Return the chat buffer for chatting with CHAT-WITH (bare or full JID).
Either a string or a buffer is returned, so use `get-buffer' or
`get-buffer-create'.

\(fn CHAT-WITH)" nil nil)

;;;***

;;;### (autoloads nil "jabber-chatbuffer" "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-chatbuffer.el"
;;;;;;  "ca2536495a59636062df01d9a379e798")
;;; Generated autoloads from ../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-chatbuffer.el

(defvar jabber-buffer-connection nil "\
The connection used by this buffer.")

(make-variable-buffer-local 'jabber-buffer-connection)

;;;***

;;;### (autoloads (jabber-compose) "jabber-compose" "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-compose.el"
;;;;;;  "2d7d172070c6604667cb20e7f6808401")
;;; Generated autoloads from ../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-compose.el

(autoload 'jabber-compose "jabber-compose" "\
Create a buffer for composing a Jabber message.

\(fn JC &optional RECIPIENT)" t nil)

;;;***

;;;### (autoloads nil "jabber-core" "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-core.el"
;;;;;;  "9651f9fceaba17e7cfed2149a535bd4d")
;;; Generated autoloads from ../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-core.el
 (autoload 'jabber-connect-all "jabber" "Connect to all configured Jabber accounts.\nSee `jabber-account-list'.\nIf no accounts are configured (or ARG supplied), call `jabber-connect' interactively." t)
 (autoload 'jabber-connect "jabber" "Connect to the Jabber server and start a Jabber XML stream.\nWith prefix argument, register a new account.\nWith double prefix argument, specify more connection details." t)

;;;***

;;;### (autoloads (jabber-import-roster jabber-export-roster) "jabber-export"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-export.el"
;;;;;;  "43a2aa4c62d0beeb1a47c5828d700b8f")
;;; Generated autoloads from ../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-export.el

(autoload 'jabber-export-roster "jabber-export" "\
Export roster for connection JC.

\(fn JC)" t nil)

(autoload 'jabber-import-roster "jabber-export" "\
Create buffer for roster import for connection JC from FILE.

\(fn JC FILE)" t nil)

;;;***

;;;### (autoloads (jabber-gmail-query jabber-gmail-subscribe) "jabber-gmail"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-gmail.el"
;;;;;;  "d85d78e4fbba23aac71680d8e7ace175")
;;; Generated autoloads from ../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-gmail.el

(autoload 'jabber-gmail-subscribe "jabber-gmail" "\
Subscribe to gmail notifications.
See http://code.google.com/apis/talk/jep_extensions/usersettings.html#4

\(fn JC)" t nil)

(autoload 'jabber-gmail-query "jabber-gmail" "\
Request mail information from the Google Talk server (a.k.a. one shot query).
See http://code.google.com/apis/talk/jep_extensions/gmail.html#requestmail

\(fn JC)" t nil)

;;;***

;;;### (autoloads (jabber-whitespace-ping-start jabber-whitespace-ping-interval
;;;;;;  jabber-keepalive-start jabber-keepalive-timeout jabber-keepalive-interval
;;;;;;  jabber-keepalive) "jabber-keepalive" "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-keepalive.el"
;;;;;;  "c38fd384eee8471db86fa10296266a04")
;;; Generated autoloads from ../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-keepalive.el

(let ((loads (get 'jabber-keepalive 'custom-loads))) (if (member '"jabber-keepalive" loads) nil (put 'jabber-keepalive 'custom-loads (cons '"jabber-keepalive" loads))))

(defvar jabber-keepalive-interval 600 "\
Interval in seconds between connection checks.")

(custom-autoload 'jabber-keepalive-interval "jabber-keepalive" t)

(defvar jabber-keepalive-timeout 20 "\
Seconds to wait for response from server.")

(custom-autoload 'jabber-keepalive-timeout "jabber-keepalive" t)

(autoload 'jabber-keepalive-start "jabber-keepalive" "\
Activate keepalive.
That is, regularly send a ping request to the server, and
disconnect if it doesn't answer.  See `jabber-keepalive-interval'
and `jabber-keepalive-timeout'.

The JC argument makes it possible to add this function to
`jabber-post-connect-hooks'; it is ignored.  Keepalive is activated
for all accounts regardless of the argument.

\(fn &optional JC)" t nil)

(defvar jabber-whitespace-ping-interval 30 "\
Send a space character to the server with this interval, in seconds.

This is a traditional remedy for a number of problems: to keep NAT
boxes from considering the connection dead, to have the OS discover
earlier that the connection is lost, and to placate servers which rely
on the client doing this, e.g. Openfire.

If you want to verify that the server is able to answer, see
`jabber-keepalive-start' for another mechanism.")

(custom-autoload 'jabber-whitespace-ping-interval "jabber-keepalive" t)

(autoload 'jabber-whitespace-ping-start "jabber-keepalive" "\
Start sending whitespace pings at regular intervals.
See `jabber-whitespace-ping-interval'.

The JC argument is ignored; whitespace pings are enabled for all
accounts.

\(fn &optional JC)" t nil)

;;;***

;;;### (autoloads nil "jabber-keymap" "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-keymap.el"
;;;;;;  "0cbace27aa2aa51bd9cfa485bb3c0c03")
;;; Generated autoloads from ../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-keymap.el

(defvar jabber-global-keymap (let ((map (make-sparse-keymap))) (define-key map "" 'jabber-connect-all) (define-key map "" 'jabber-disconnect) (define-key map "" 'jabber-switch-to-roster-buffer) (define-key map "\n" 'jabber-chat-with) (define-key map "\f" 'jabber-activity-switch-to) (define-key map "" 'jabber-send-away-presence) (define-key map "" 'jabber-send-default-presence) (define-key map "" 'jabber-send-xa-presence) (define-key map "" 'jabber-send-presence) map) "\
Global Jabber keymap (usually under C-x C-j)")

(define-key ctl-x-map "\n" jabber-global-keymap)

;;;***

;;;### (autoloads (jabber-display-menu) "jabber-menu" "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-menu.el"
;;;;;;  "c9f73781acb3a41b7a1fc0f09c8e071d")
;;; Generated autoloads from ../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-menu.el

(defvar jabber-menu (let ((map (make-sparse-keymap "jabber-menu"))) (define-key map [jabber-menu-connect] '("Connect" . jabber-connect-all)) (define-key map [jabber-menu-disconnect] '("Disconnect" . jabber-disconnect)) (define-key map [jabber-menu-roster] '("Switch to roster" . jabber-switch-to-roster-buffer)) (define-key map [jabber-menu-customize] '("Customize" . jabber-customize)) (define-key map [jabber-menu-info] '("Help" . jabber-info)) (define-key map [jabber-menu-status] (cons "Set Status" (make-sparse-keymap "set-status"))) (define-key map [jabber-menu-status jabber-menu-status-chat] '("Chatty" lambda nil (interactive) (jabber-send-presence "chat" (jabber-read-with-input-method "status message: " *jabber-current-status* '*jabber-status-history*) *jabber-current-priority*))) (define-key map [jabber-menu-status jabber-menu-status-dnd] '("Do not Disturb" lambda nil (interactive) (jabber-send-presence "dnd" (jabber-read-with-input-method "status message: " *jabber-current-status* '*jabber-status-history*) *jabber-current-priority*))) (define-key map [jabber-menu-status jabber-menu-status-xa] '("Extended Away" . jabber-send-xa-presence)) (define-key map [jabber-menu-status jabber-menu-status-away] '("Away" . jabber-send-away-presence)) (define-key map [jabber-menu-status jabber-menu-status-online] '("Online" . jabber-send-default-presence)) map))

(defvar jabber-display-menu 'maybe "\
Decide whether the \"Jabber\" menu is displayed in the menu bar.
If t, always display.
If nil, never display.
If maybe, display if any of `jabber-account-list' or `jabber-connections'
is non-nil.")

(custom-autoload 'jabber-display-menu "jabber-menu" t)

(define-key-after (lookup-key global-map [menu-bar]) [jabber-menu] (list 'menu-item "Jabber" jabber-menu :visible '(or (eq jabber-display-menu t) (and (eq jabber-display-menu 'maybe) (or jabber-account-list (bound-and-true-p jabber-connections))))))

;;;***

;;;### (autoloads (jabber-muc-private-message-p jabber-muc-sender-p
;;;;;;  jabber-muc-message-p jabber-muc-private-get-buffer jabber-muc-get-buffer
;;;;;;  jabber-muc-autojoin jabber-muc-default-nicknames) "jabber-muc"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-muc.el"
;;;;;;  "56bd486f1dc9b14623977e3dda52a0f7")
;;; Generated autoloads from ../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-muc.el

(defvar *jabber-active-groupchats* nil "\
alist of groupchats and nicknames
Keys are strings, the bare JID of the room.
Values are strings.")

(defvar jabber-muc-default-nicknames nil "\
Default nickname for specific MUC rooms.")

(custom-autoload 'jabber-muc-default-nicknames "jabber-muc" t)

(defvar jabber-muc-autojoin nil "\
List of MUC rooms to automatically join on connection.
This list is saved in your Emacs customizations.  You can also store
such a list on the Jabber server, where it is available to every
client; see `jabber-edit-bookmarks'.")

(custom-autoload 'jabber-muc-autojoin "jabber-muc" t)

(defvar jabber-muc-printers 'nil "\
List of functions that may be able to print part of a MUC message.
This gets prepended to `jabber-chat-printers', which see.")

(autoload 'jabber-muc-get-buffer "jabber-muc" "\
Return the chat buffer for chatroom GROUP.
Either a string or a buffer is returned, so use `get-buffer' or
`get-buffer-create'.

\(fn GROUP)" nil nil)

(autoload 'jabber-muc-private-get-buffer "jabber-muc" "\
Return the chat buffer for private chat with NICKNAME in GROUP.
Either a string or a buffer is returned, so use `get-buffer' or
`get-buffer-create'.

\(fn GROUP NICKNAME)" nil nil)

(autoload 'jabber-muc-message-p "jabber-muc" "\
Return non-nil if MESSAGE is a groupchat message.
That does not include private messages in a groupchat, but does
include groupchat invites.

\(fn MESSAGE)" nil nil)

(autoload 'jabber-muc-sender-p "jabber-muc" "\
Return non-nil if JID is a full JID of an MUC participant.

\(fn JID)" nil nil)

(autoload 'jabber-muc-private-message-p "jabber-muc" "\
Return non-nil if MESSAGE is a private message in a groupchat.

\(fn MESSAGE)" nil nil)

;;;***

;;;### (autoloads (jabber-muc-looks-like-personal-p) "jabber-muc-nick-completion"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-muc-nick-completion.el"
;;;;;;  "9ad191fc4b3bafdca5660f69a2fafa8c")
;;; Generated autoloads from ../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-muc-nick-completion.el

(autoload 'jabber-muc-looks-like-personal-p "jabber-muc-nick-completion" "\
Return non-nil if jabber MESSAGE is addresed to me.
Optional argument GROUP to look.

\(fn MESSAGE &optional GROUP)" nil nil)

;;;***

;;;### (autoloads (jabber-send-default-presence jabber-send-presence)
;;;;;;  "jabber-presence" "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-presence.el"
;;;;;;  "7868b830d4da255b13953d66c037cefb")
;;; Generated autoloads from ../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-presence.el

(autoload 'jabber-send-presence "jabber-presence" "\
Set presence for all accounts.

\(fn SHOW STATUS PRIORITY)" t nil)

(autoload 'jabber-send-default-presence "jabber-presence" "\
Send default presence.
Default presence is specified by `jabber-default-show',
`jabber-default-status', and `jabber-default-priority'.

\(fn &optional IGNORE)" t nil)

;;;***

;;;### (autoloads (jabber-private-set jabber-private-get) "jabber-private"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-private.el"
;;;;;;  "4c6dbde85cee0c2a65da41ce509afa8d")
;;; Generated autoloads from ../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-private.el

(autoload 'jabber-private-get "jabber-private" "\
Retrieve an item from private XML storage.
The item to retrieve is identified by NODE-NAME (a symbol) and
NAMESPACE (a string).

On success, SUCCESS-CALLBACK is called with JC and the retrieved
XML fragment.

On error, ERROR-CALLBACK is called with JC and the entire IQ
result.

\(fn JC NODE-NAME NAMESPACE SUCCESS-CALLBACK ERROR-CALLBACK)" nil nil)

(autoload 'jabber-private-set "jabber-private" "\
Store FRAGMENT in private XML storage.
SUCCESS-CALLBACK, SUCCESS-CLOSURE-DATA, ERROR-CALLBACK and
ERROR-CLOSURE-DATA are used as in `jabber-send-iq'.

\(fn JC FRAGMENT &optional SUCCESS-CALLBACK SUCCESS-CLOSURE-DATA ERROR-CALLBACK ERROR-CLOSURE-DATA)" nil nil)

;;;***

;;;### (autoloads (jabber-roster-update jabber-switch-to-roster-buffer)
;;;;;;  "jabber-roster" "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-roster.el"
;;;;;;  "cd48f54a7c92b6371872732d0d577f57")
;;; Generated autoloads from ../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-roster.el

(autoload 'jabber-switch-to-roster-buffer "jabber-roster" "\
Switch to roster buffer.
Optional JC argument is ignored; it's there so this function can
be used in `jabber-post-connection-hooks'.

\(fn &optional JC)" t nil)

(autoload 'jabber-roster-update "jabber-roster" "\
Update roster, in memory and on display.
Add NEW-ITEMS, update CHANGED-ITEMS and remove DELETED-ITEMS, all
three being lists of JID symbols.

\(fn JC NEW-ITEMS CHANGED-ITEMS DELETED-ITEMS)" nil nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../../../.emacs.d/elpa/jabber-0.8.90/fsm.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-activity.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-ahc-presence.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-ahc.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-alert.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-autoaway.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-autoloads.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-avatar.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-awesome.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-bookmarks.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-browse.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-chat.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-chatbuffer.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-chatstates.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-compose.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-conn.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-core.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-disco.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-events.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-export.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-feature-neg.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-festival.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-ft-client.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-ft-common.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-ft-server.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-gmail.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-history.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-iq.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-keepalive.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-keymap.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-logon.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-menu.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-modeline.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-muc-nick-completion.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-muc.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-newdisco.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-osd.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-ourversion.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-pkg.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-presence.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-private.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-ratpoison.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-register.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-roster.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-sasl.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-sawfish.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-screen.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-search.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-si-client.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-si-common.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-si-server.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-socks5.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-time.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-truncate.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-util.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-vcard-avatars.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-vcard.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-version.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-watch.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-widget.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-wmii.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-xmessage.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber-xml.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/jabber.el"
;;;;;;  "../../../../../../../../.emacs.d/elpa/jabber-0.8.90/srv.el"
;;;;;;  "jabber-activity.el" "jabber-autoaway.el" "jabber-bookmarks.el"
;;;;;;  "jabber-chat.el" "jabber-chatbuffer.el" "jabber-compose.el"
;;;;;;  "jabber-core.el" "jabber-export.el" "jabber-gmail.el" "jabber-keepalive.el"
;;;;;;  "jabber-keymap.el" "jabber-menu.el" "jabber-muc-nick-completion.el"
;;;;;;  "jabber-muc.el" "jabber-presence.el" "jabber-private.el"
;;;;;;  "jabber-roster.el" "jabber.el") (20900 1520 241737 0))

;;;***

(provide 'jabber-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; jabber-autoloads.el ends here
