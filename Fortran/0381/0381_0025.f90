interface 
 subroutine sub
 end subroutine 
end interface
 procedure(sub),pointer :: pp
pp=>null()
if (associated(pp,sub))print *,'error 101'
print *,'pass'
end
 subroutine sub
 end subroutine 
