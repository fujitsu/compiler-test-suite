 subroutine s1
   write(1,*)[(k,k=1,2)]
rewind 1
read(1,*) k1,k2
if (k1/=1) print *,101
if (k2/=2) print *,102
 
 end

 call s1
 print *,'pass'

 end
 

