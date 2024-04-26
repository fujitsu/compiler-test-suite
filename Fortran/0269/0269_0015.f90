 integer :: crr(4)= [([(ii+jj,integer::jj=1,2)],ii=1,2)]
 if(any(crr /=[2,3,3,4]))print*,101,crr
 crr = [([(ii+jj+1,integer::jj=1,2)],ii=1,2)]
 if(any(crr /=[3,4,4,5]))print*,102
 crr = [([(jj+ii+2,integer::jj=1,2)],ii=1,2)]
 if(any(crr /=[4,5,5,6]))print*,103

 print*,"PASS"

 end

