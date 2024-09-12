interface 
 subroutine sub
 end subroutine 
end interface
procedure(sub),pointer :: pp
pp=>sub
call       y(sub,pp)
print *,"pass"
contains
subroutine q(t,p)
interface 
 subroutine t
 end subroutine 
 subroutine p
 end subroutine 
end interface
integer n
common /x/ n
call t
if (n/=5)print *,'error-5'
call p
if (n/=6)print *,'error-6'
end subroutine
subroutine z(t,p)
interface 
 subroutine t
 end subroutine 
end interface
procedure(t),pointer :: p
integer n
common /x/ n
call t
if (n/=3)print *,'error-3'
call p
if (n/=4)print *,'error-4'
end subroutine
subroutine y(t,p)
interface 
 subroutine t
 end subroutine 
end interface
procedure(t),pointer :: p
integer n
common /x/ n
call t
if (n/=1)print *,'error-1'
call p
if (n/=2)print *,'error-2'
call z(t,p)
call q(t,p)
end subroutine
end

 subroutine sub
 common /x/ n
 n=n+1
 end subroutine 
 blockdata
 common /x/ n
 data n/0/
 end
