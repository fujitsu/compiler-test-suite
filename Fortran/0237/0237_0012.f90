module m
external :: f1
integer,external :: ff
end module
recursive subroutine       f1()
use m,only:f2=>f1
use m,only:f3=>ff
call    f2()
write(105,*) f3()
end 
print *,'pass'
end

integer function ff()
ff=1
end


