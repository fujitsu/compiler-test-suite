module m1
  character(1),target::ta(3)=reshape((/'a','b','c'/),(/3/))
  character(:),pointer::pa(:)
end
subroutine s1
use m1
interface
    function fa(i) result(r)
      character(i),pointer::r(:)
    end function 
end interface
call       ss1(pa)
contains
subroutine ss1(pa)
  character(:),pointer::pa(:)
  i1=1;i2=2;i3=3

pa=>fa(1)
pa(2:3)=pa(1:2)
if (pa(1)/='a')print *,'error-01'
if (pa(2)/='a')print *,'error-02'
if (pa(3)/='b')print *,'error-03'
pa=(/'a','b','c'/)
pa(i2:i3)=pa(i1:i2)
if (pa(1)/='a')print *,'error-11'
if (pa(2)/='a')print *,'error-12'
if (pa(3)/='b')print *,'error-13'
end subroutine
end
call s1
print *,'pass'
end
    function fa(i) result(r)
      use m1
      character(i),pointer::r(:)
      if (i==1) then
        r=>ta
      endif
    end function 
