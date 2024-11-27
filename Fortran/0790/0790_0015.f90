call sub1()
call sub2()
call sub3()
call sub4()
call sub5()
call sub6()
call sub7()
call sub8()
call sub9()
call sub0()
print *,'pass'
10end 
subroutine sub1()
integer :: i
namelist /na/i
i=1;i=i
end subroutine
subroutine sub2()
assign 10 to i
i=1
10end subroutine
subroutine sub3()
goto i(10,10,10)
10end subroutine
subroutine sub4()
save i
i=1
end subroutine
subroutine sub5()
i=1;i=i
return i
end subroutine
subroutine sub6()
integer ,allocatable :: arr(:)
allocate(arr(10))
end subroutine
subroutine sub7()
integer ,allocatable :: arr(:)
deallocate(arr)
end subroutine
subroutine sub8()
integer ,pointer     :: arr(:)
nullify(arr)
end subroutine
subroutine sub9()
contains
subroutine ssss()
end subroutine
end subroutine
module mod
integer,allocatable::a(:)
end
subroutine sub0()
use mod
end subroutine
