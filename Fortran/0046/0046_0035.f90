 program pro
complex,parameter :: cmp(5)=(2.0,3.0)
real :: res(3) = BESSEL_J1(cmp(1:5:2)%im)
        if( .not.(res(1)>0.32 .and. res(1)<0.34))  print *,101,res
        if( .not.(res(2)>0.32 .and. res(2)<0.34))  print *,102
        if( .not.(res(3)>0.32 .and. res(3)<0.34))  print *,103
        print *, "pass"
end
