use,intrinsic :: iso_c_binding
implicit none

!
if(C_NULL_CHAR       /= char(0)) print *,'fail'
if(C_ALERT           /= achar(7)) print *,'fail'
if(C_BACKSPACE       /= achar(8)) print *,'fail'
if(C_FORM_FEED        /= achar(12)) print *,'fail'
if(C_NEW_LINE        /= achar(10)) print *,'fail'
if(C_CARRIAGE_RETURN /= achar(13)) print *,'fail'
if(C_HORIZONTAL_TAB  /= achar(9)) print *,'fail'
if(C_VERTICAL_TAB    /= achar(11)) print *,'fail'
!

print *,'pass'
end
