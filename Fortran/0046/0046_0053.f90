 program pro
complex,parameter :: cmp(5)=(2.0,3.0)
real(kind=8) :: res8(3) = BESSEL_Y0(cmp(1:5:2)%im)
        if( .not.(res8(1)>0.36 .and. res8(1)<0.38))  print *,201,res8
        if( .not.(res8(2)>0.36 .and. res8(2)<0.38))  print *,202
        if( .not.(res8(3)>0.36 .and. res8(3)<0.38))  print *,203
        print *, "pass"
end
