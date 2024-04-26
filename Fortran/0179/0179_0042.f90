use mod
call sub1()
print *,'pass'
10end 
module mod
contains
subroutine sub1()
integer :: i
namelist /na/i
i=1;i=i
call sub1a()
end subroutine
subroutine sub1a()
integer :: i
namelist /na/i
i=1;i=i
end subroutine
end
