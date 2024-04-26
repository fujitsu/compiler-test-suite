integer::jj=44,ii=44
integer :: crr(8)=[([([(ii+jj+ii+kk+jj,integer::jj=1,2)],integer::ii=1,2)],integer::kk=1,2)]
if(any(crr/=[ 5, 7, 7, 9, 6, 8, 8, 10]))print*,102
 if(jj /=44)print*,202
 if(ii /=jj)print*,203
 print*,"PASS"
 end

