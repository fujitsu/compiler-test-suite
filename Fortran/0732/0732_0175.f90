program main
        integer,parameter      :: n = 3
        real,dimension(n,n)    :: a = RESHAPE((/ 11.0, 32.0, 3.0,  &
                                                 (I*1.0   ,I=1,n), &
                                                 (I*I*1.0 ,I=1,n)/)&
                                                 ,(/n,n/))
        if (any(abs((/a/)-(/11,32,3,1,2,3,1,4,9/))>0.00001))print *,'error'
print *,'pass'
end program main
