 program pro
complex,parameter :: cmp(5)=(2.0,3.0)
real :: res(3) = BESSEL_J0(cmp(1:5:2)%im)
        if( .not.(res(1)<-0.25 .and. res(1)>-0.27))  print *,101,res
        if( .not.(res(2)<-0.25 .and. res(2)>-0.27))  print *,102
        if( .not.(res(3)<-0.25 .and. res(3)>-0.27))  print *,103
        print *, "pass"
end
