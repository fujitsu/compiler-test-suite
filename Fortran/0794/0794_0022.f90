subroutine sub
 implicit none
  procedure(),pointer:: p,pp,ppp=>null()
  procedure(),pointer:: w,ww,www=>null()
call s
contains
subroutine s
implicit none
interface
  subroutine x
  end subroutine
  function   y()
  end function
end interface
p=>x
call p
pp=>x
call pp
if (associated( ppp ) )print *,203
ppp=>x
call ppp
w=>p
call w
ww=>pp
call ww
www=>ppp
call www
end subroutine
end
call sub
print *,'pass'
end
  subroutine x
  end subroutine
  function   y()
   y=1
  end function