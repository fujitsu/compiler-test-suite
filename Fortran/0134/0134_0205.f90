module m1
 interface 
   function jfun()
   end function
 end interface
contains
subroutine s
procedure(sin),pointer :: pp
procedure(kfun),pointer :: kp
procedure(mfun),pointer :: mp
procedure(sin),pointer :: py
procedure(sin),pointer :: pz
call t1(pp)
call t2(jfun)
call t3(kp)
call t4(mp)
pz=>sin
call t5(pp,py,pz)
end subroutine
subroutine t1(p)
procedure(sin),pointer :: p
procedure(sin),pointer :: px
p=>sin
if (.not.associated(p,sin)) print *,'error-2'
if (abs(p(.1)-sin(.1))>0.001)print *,'error-3'
px=>p
if (.not.associated(p,px)) print *,'error-4'
end subroutine
subroutine t2(jf)
 interface 
   function jf()
   end function
 end interface
procedure(jfun),pointer :: ip
ip=>jf
if (.not.associated(ip,jf)) print *,'error-12'
if (ip()/=1)print *,'error-13'
if (jf()/=1)print *,'error-14'
end subroutine
subroutine t3(kp)
procedure(kfun),pointer :: kp
kp=>kfun
if (.not.associated(kp,kfun)) print *,'error-22'
if (kp()/=2)print *,'error-23'
if (kfun()/=2)print *,'error-24'
end subroutine
subroutine t4(mp)
procedure(mfun),pointer :: mp
mp=>mfun
if (.not.associated(mp,mfun)) print *,'error-32'
if (mp()/=3)print *,'error-33'
if (mfun()/=3)print *,'error-24'
end subroutine
subroutine t5(p,py,pz)
procedure(sin),pointer :: p
procedure(sin),pointer :: px
procedure(sin),pointer :: py
procedure(sin),pointer :: pz
p=>sin
if (.not.associated(p,sin)) print *,'error-2'
if (abs(p(.1)-sin(.1))>0.001)print *,'error-3'
px=>p
if (.not.associated(p,px)) print *,'error-4'
py=>p
if (.not.associated(p,py)) print *,'error-4'
if (.not.associated(p,pz)) print *,'error-4'
end subroutine



function  kfun()
  kfun=2
  return 
entry     mfun()
  kfun=3
end function
end
use m1
call s
print *,"pass"
end
 function jfun()
  jfun=1
 end function
