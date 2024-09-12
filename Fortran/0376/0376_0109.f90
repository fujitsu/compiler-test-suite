module m1
  character(1),target::ta(3)=reshape((/'a','b','c'/),(/3/))
  character(:),pointer::pa(:)
  character(2),target::ta2(2)=reshape((/'aa','bb'/),(/2/))
end
subroutine s1
use m1
interface
    function fa(i) result(r)
      character(i),pointer::r(:)
    end function 
end interface
call       ss1(p,pa)
contains
subroutine ss1(p,pa)
  character(:),pointer::pa(:)

pa=>fa(1)
call chk02(pa)
end subroutine
end
call s1
print *,'pass'
end
    function fa(i) result(r)
      use m1
      character(i),pointer::r(:)
      if (i==1) then
        r=>ta(1:3:2)
      else
        r=>ta2
      endif
    end function 
subroutine chk02(c)
character(*) c(3)
if (c(1)/='a')print *,'error-101'
if (c(2)/='c')print *,'error-102'
end
