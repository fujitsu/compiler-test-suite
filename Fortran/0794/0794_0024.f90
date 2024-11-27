module m0 
 implicit none
  procedure(),pointer:: p,pp,ppp=>null()
  procedure(),pointer:: w,ww,www=>null()
end
module m1 
use m0
 implicit none
  procedure(),pointer:: px,ppx,pppx=>null()
  procedure(),pointer:: wx,wwx,wwwx=>null()
end

subroutine sub
use m1
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
px=>p
call px
ppx=>x
call ppx
pppx=>ppx
call pppx
wx=>px
call wx
wwx=>ppx
call wwx
wwwx=>pppx
call wwwx
end subroutine

call sub
print *,'pass'
end
  subroutine x
  end subroutine
  function   y()
   y=1
  end function
