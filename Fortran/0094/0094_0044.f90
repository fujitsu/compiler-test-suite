program pro
 implicit none
 integer :: n(2,2)
 real :: y(2,2)
 n=2
 y=BESSEL_JN(n,RESHAPE([real(8)::1.3,2.0,1.8,2.2],[2,2]))
    if( .not.(y(1,1)>0.17 .and. y(1,1)<0.19))  print *,101
    if( .not.(y(2,1)>0.34 .and. y(2,1)<0.36))  print *,102
    if( .not.(y(1,2)>0.29 .and. y(1,2)<0.31))  print *,103
    if( .not.(y(2,2)>0.38 .and. y(2,2)<0.40))  print *,104
    if(kind( BESSEL_JN(n,RESHAPE([real(8)::1.3,2.0,1.8,2.2],[2,2]))).ne.8) print*,105
 print*,"pass"
end
