interface 
 subroutine sub
 end subroutine 
end interface
 type wt
   integer v1
   procedure(sub),pointer,nopass :: pp
 end type
 type(wt)::wv
wv%pp=>sub
call       y(wv%pp)
print *,"pass"
contains
subroutine y(p)
procedure(sub),pointer :: p
integer n
common /x/ n
n=0
call p
if (n/=1)print *,'error-2'
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
