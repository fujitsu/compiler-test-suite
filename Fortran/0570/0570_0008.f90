 program pro
complex,parameter :: cmp(5)=(50.7,20.0)
real :: res(3) = ERFC_SCALED(cmp(1:5:2)%im)
        if( .not.(res(1)>0.027 .and. res(1)<0.029))  print *,101,res
        if( .not.(res(2)>0.027 .and. res(2)<0.029))  print *,102
        if( .not.(res(3)>0.027 .and. res(3)<0.029))  print *,103
        print *, "pass"
end
