program pro
complex,parameter :: cmp(5)=(3.5,4.0)
real :: res(3) = LOG_GAMMA(cmp(1:5:2)%im)
        if( .not.(res(1)>1.78 .and. res(1)<1.80))  print *,101,res
        if( .not.(res(2)>1.78 .and. res(2)<1.80))  print *,102
        if( .not.(res(3)>1.78 .and. res(3)<1.80))  print *,103
        print *, "pass"
end
