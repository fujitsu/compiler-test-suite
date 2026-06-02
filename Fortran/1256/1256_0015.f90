subroutine sub(cha,i)
 IMPLICIT NONE
integer :: i
  character(i) :: cha
          integer ::ppp(len(cha(1:5)))
          if (size(ppp) .ne.len(cha(1:5)) ) print *,'ng :',size(ppp)
end
call sub('aaaaa',5)
         print *,'pass'
         end
