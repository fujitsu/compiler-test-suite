! RESHAPE inside argument, KIND USED
program pro
 implicit none
 integer,parameter :: n(2,2)=RESHAPE([real(8)::1.3,1.8,2.0,2.2],[2,2])
 real :: y(2,2)=BESSEL_JN(n,RESHAPE([real(8)::1.3,1.8,2.0,2.2],[2,2]))
    if( (y(1,1)>5.23 .and. y(1,1)<5.22))  print *,101,y(1,1)
    if( (y(2,1)>0.58 .and. y(2,1)<0.57))  print *,102,y(2,1)
    if( (y(1,2)>0.29 .and. y(1,2)<0.31))  print *,103,y(1,2)
    if( .not.(y(2,2)>0.38 .and. y(2,2)<0.40))  print *,104
    if(kind( BESSEL_JN(n,RESHAPE([real(8)::1.3,2.0,1.8,2.2],[2,2]))).ne.8) print*,105
 print*,"pass"
end
