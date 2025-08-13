 subroutine s1
   write(2,*)[(k,k=1,2)]
rewind 2
read(2,*) k1,k2
if (k1/=1) print *,101
if (k2/=2) print *,102
 
 end

 call s1
 print *,'pass'

 end
 

