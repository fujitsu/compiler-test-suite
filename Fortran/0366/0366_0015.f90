 program len_trim
 call sub
 end
 subroutine sub
 implicit none
 integer*4 i
 integer*4,parameter::low=1,upper=4
 integer*1 ans(low:upper)
 character*3 t(low:upper)
 data t/"a  "," ","d"," aA "/
 do i=low,upper
   ans(i)=len_trim(t(i))
 enddo
 print *,ans
 end
