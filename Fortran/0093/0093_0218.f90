complex :: rr 
rr = fun()   
if (sizeof (rr) .ne. 8) print*,101
if (rr %re .ne. 3.43) print*,102
if (rr %im .ne. 4.56) print*,103
if (rr .ne. (3.43,4.56)) print*,104
PRINT*,"PASS"
contains
complex function fun( )
        complex :: x
        x%im = 4.56
        x%re = 3.43
        fun = x
end function 
end
