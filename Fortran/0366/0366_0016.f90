 program lge
 call sub
 end
 subroutine sub
 implicit none
 integer*4 i
 integer*4,parameter::low=1,upper=4
 logical*4 ans(low:upper)
 character*3 t(low:upper)
 data t/"abc","CBA","def","aA "/
 do i=low,upper
   ans(i)=lge(t(i),"aA")
 enddo
 print *,ans
 end
