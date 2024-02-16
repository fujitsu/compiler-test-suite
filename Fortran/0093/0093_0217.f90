real :: rr 
rr = fun()   

if (sizeof (rr) .ne. 4) print*,101
if (rr  .ne. 3.78) print*,102
PRINT*,"PASS"
contains

complex function fun( )
        complex :: cmp = (3.78,4.98)
        real:: rr
        rr = cmp%re
        fun = rr
end function 

end
