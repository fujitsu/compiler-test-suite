 program scan
 call sub
 end
 subroutine sub
 implicit none
 integer*4 i
 integer*4,parameter::low=1,upper=3
 integer*4 ans(low:upper)
 character*3 t(low:upper)
 data t/"abc","CBA","def"/
 do i=low,upper
   ans(i)=scan(t(i),"aA")
 enddo
 print *,ans
 end
