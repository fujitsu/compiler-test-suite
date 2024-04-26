module m1
contains
character function cc(x) bind(c)
character x,dd
entry dd(x) bind(c)
cc=x
end function
end
character function c(x) bind(c)
character x,d
entry d(x) bind(c)
c=x
end function

subroutine s1
use m1
interface
character function c(x) bind(c)
character x
end function
character function d(x) bind(c)
character x
end function
end interface
 if(c('1')/='1')print *,101
 if(d('2')/='2')print *,102
 if(cc('1')/='1')print *,103
 if(dd('2')/='2')print *,104
end
call s1
print *,'pass'
end

