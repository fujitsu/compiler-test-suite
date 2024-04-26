use,intrinsic :: iso_c_binding
implicit none

!
if(C_NULL_CHAR       /= char(0)) call errtra
if(C_ALERT           /= achar(7)) call errtra
if(C_BACKSPACE       /= achar(8)) call errtra
if(C_FORM_FEED        /= achar(12)) call errtra
if(C_NEW_LINE        /= achar(10)) call errtra
if(C_CARRIAGE_RETURN /= achar(13)) call errtra
if(C_HORIZONTAL_TAB  /= achar(9)) call errtra
if(C_VERTICAL_TAB    /= achar(11)) call errtra
!

print *,'pass'
end
