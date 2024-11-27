use mod
call sub3()
print *,'pass'
10end 
module mod
contains
subroutine sub3()
goto i(10,10,10)
10end subroutine
end
