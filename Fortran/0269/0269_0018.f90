integer::jj,ii
jj=54
ii=jj
block
integer::jj,ii
 integer :: crr(4)= [([(ii+jj,integer::jj=1,2)],integer::ii=1,2)]
 jj=44
 ii=jj 
 if(any(crr /=[2,3,3,4]))print*,101,crr
 crr = [([(ii+jj+1,integer::jj=1,2)],integer::ii=1,2)]
 if(any(crr /=[3,4,4,5]))print*,102
 crr = [([(jj+ii+2,integer::jj=1,2)],integer::ii=1,2)]
 if(any(crr /=[4,5,5,6]))print*,103
 if(jj /=44)print*,202
 if(ii /=jj)print*,203
end block
 if(jj /=54)print*,204
 if(ii /=jj)print*,205
 print*,"PASS"
 end

