use mod
call sub1()
call sub2()
print *,'pass'
10end 
subroutine sub1()
save i
end subroutine
module mod
contains
subroutine sub2()
save i
end subroutine
end
subroutine subbb()
call sub3()
contains
subroutine sub3()
save i
end subroutine
end
