program pro
implicit none
real(16) :: arr(2,2)
real(16) :: x(2,2)
arr(1,1)= 20.0
arr(1,2)= 10.0
arr(2,1)= 20.0
arr(2,2)= 10.8
x=ERFC_SCALED(arr(2,1))
        if( .not.(x(2,1)>0.026 .and. x(2,1)<0.029))  print *,102
        print*,"pass"
end
