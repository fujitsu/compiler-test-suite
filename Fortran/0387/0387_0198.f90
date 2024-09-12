interface 
 subroutine sub
 end subroutine 
end interface
procedure(sub),pointer :: pp
pp=>sub
call       y(sub,pp)
print *,"pass"
contains
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
