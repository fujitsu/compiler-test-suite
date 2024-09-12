interface 
 subroutine sub
 end subroutine 
 subroutine sub1
 end subroutine 
end interface
 integer n
 common /x/ n
type x
 integer n
  procedure(sub),nopass,pointer :: p2
end type
type(x)::v
v=x(1,sub) 
if (.not.associated(v%p2,sub))print *,'error 102'
n=0
call v%p2
if (n/=1)print *,'error-95'
v=x(1,sub1) 
if (.not.associated(v%p2,sub1))print *,'error 103'
n=0
call v%p2
if (n/=2)print *,'error-96'
v=x(1,v%p2) 
if (.not.associated(v%p2,sub1))print *,'error 104'
n=0
call v%p2
if (n/=2)print *,'error-97'
print *,"pass"
end

 subroutine sub
 common /x/ n
 n=1
 end subroutine 
 subroutine sub1
 common /x/ n
 n=2
 end subroutine 
