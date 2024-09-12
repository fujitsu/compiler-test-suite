interface 
 subroutine sub
 end subroutine 
 subroutine sub1
 end subroutine 
end interface
procedure(sub),pointer :: p2
 integer n
 common /x/ n
p2=>sub
if (.not.associated(p2,sub))print *,'error 102'
n=0
call p2
if (n/=1)print *,'error-95'
p2=>sub1
if (.not.associated(p2,sub1))print *,'error 103'
n=0
call p2
if (n/=2)print *,'error-96'
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
