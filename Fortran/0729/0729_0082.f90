program prod_test

    double precision :: dp, de
    real             :: sp, se

    dp  = 4.0D0 *datan( 1.0D0 )
    de  = dexp( 1.0D0 )

    sp  = 4.0 *atan( 1.0 )
    se  = exp( 1.00 )

    write(118,'(A/)') " Double Precision Results:"
    write(118,*) "dp*de                   =", dp*de
    write(118,*) "dble(sp*se)             =", dble(sp*se )
    write(118,*) "dprod(sp*se)            =", dprod(sp,se)
    write(118,*) "dble(sp)*dble(se)       =", dble(sp)*dble(se)

    write(118,'(/A/)') " Single Precision Results:"
    write(118,*) "sp*se                   =", sp*se
    write(118,*) "real(dp*de)             =", real(dp*de )
    write(118,*) "real(dble(sp)*dble(se)) =", real(dble(sp)*dble(se) )
    write(118,*) "real(dprod(sp,se))      =", real(dprod(sp,se))

    write(118,'(/A,E10.2)') " Single Precision Epsilon  ", epsilon(sp)
    write(118,*) "Single Precision Nearest  ", nearest(sp*se,2.0)

    print *,'pass'
end program prod_test
