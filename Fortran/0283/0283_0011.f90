program main
integer::count=0
logical::var
call sub()
call sub()

contains
subroutine sub()
associate(a=>fun(var))
if(a==1) print*,'pass'
if(var) return
end associate
count=count+1
end subroutine

function fun(dum)
logical::dum
if(count==1) then
 dum=.true.
 fun=1
else
 dum=.false.
 fun=0
end if
end function
end program
