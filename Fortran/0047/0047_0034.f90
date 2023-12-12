! RESHAPE inside argument, KIND USED
program pro
 implicit none
 integer,parameter :: n(2,2)=2
 real :: y(2,2)=BESSEL_YN(n,RESHAPE([real(8)::1.3,2.0,1.8,2.2],[2,2]))
    if( .not.(y(1,1)<-1.12 .and. y(1,1)>-1.14))  print *,101
    if( .not.(y(2,1)<-0.60 .and. y(2,1)>-0.62))  print *,102
    if( .not.(y(1,2)<-0.71 .and. y(1,2)>-0.73))  print *,103
    if( .not.(y(2,2)<-0.50 .and. y(2,2)>-0.52))  print *,104
    if(kind( BESSEL_YN(n,RESHAPE([real(8)::1.3,2.0,1.8,2.2],[2,2]))).ne.8) print*,105
 print*,"pass"
end
