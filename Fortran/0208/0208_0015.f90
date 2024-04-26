  integer,parameter::k=2
    complex(k) :: y=(3,8)
    real(k) :: z  =2
    complex(k) :: yy=(3._2,8._2)
    real(k) :: zz  =2._2

if( y%re/=3.    ) print*,1010
if( y%im/=8.    ) print*,1011
if( z/=2.    ) print*,1012
if( yy%re/=3.    ) print*,1110
if( yy%im/=8.    ) print*,1111
if( zz/=2.    ) print*,1112
print*,"pass"
End program
