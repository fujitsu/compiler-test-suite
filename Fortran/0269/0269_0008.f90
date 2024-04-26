integer::jj=44,ss=44
integer :: crr(16)
crr=[([(([(ii+jj+ii+kk+jj+ss,integer::jj=1,2)],integer::ss=1,2),integer::ii=1,2)],integer::kk=1,2)]
if (any(crr /= [ 6, 8, 7, 9, 8, 10, 9, 11, 7, 9, 8, 10, 9, 11, 10, 12]))print*,101
 if(jj /=44)print*,202
 if(ss /=jj)print*,203
 print*,"PASS"
 end

