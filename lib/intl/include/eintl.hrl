%%% File    : eintl.hrl
%%% Author  :  <tony@bit.hemma.se>
%%% Description : language support
%%% Created :  9 Sep 2003 by  <tony@bit.hemma.se>

%% use this for direct translations
-define(_(X), eintl:gettext(X)).

%% use this for indirect translations i.e log files etc.
-define(N_(X), eintl:gettext_noop(X)).



