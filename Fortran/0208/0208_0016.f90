  integer,parameter::k=2
    complex(k) :: y=(3.1,8.1)
    real(k) :: z  =2.1
    complex(k) :: yy=(3.1_2,8.1_2)
    real(k) :: zz  =2.1_2
    complex(4) :: yyy=(3.1,8.1)
    real(4) :: zzz  =2.1
if( y%re/=real(3.1,2)    ) print*,1010
if( y%im/=real(8.1,2)    ) print*,1011
if( z/=real(2.1,2)    ) print*,1013
if( y%re/=real(yyy%re,2)    ) print*,1210
if( y%im/=real(yyy%im,2)    ) print*,1211
if( z/=real(zzz,2)    ) print*,1213
if( yy%re/=3.1_2  ) print*,1110
if( yy%im/=8.1_2  ) print*,1111
if( zz/=2.1_2  ) print*,1112
print*,"pass"
End program
