module m1
  character(2),target::t='12'
  character(1),target::ta(3,2)=reshape((/'a','b','c','d','e','f'/),(/3,2/))
  character(:),pointer::p
  character(:),pointer::pa(:,:)
  character(1),target::t1='3'
  character(2),target::ta2(2,3)=reshape((/'aa','bb','cc','dd','ee','ff'/),(/2,3/))
end
subroutine s1
use m1
interface
    function f(i) result(r)
      character(i),pointer::r
    end function 
    function fa(i) result(r)
      character(i),pointer::r(:,:)
    end function 
    function fb(i) result(r)
      character(i),pointer::r(:,:)
    end function 
end interface
p=>ta2(2,3)
call       ss1(p,pa)
contains
subroutine ss1(p,pa)
  character(:),pointer::p
  character(:),pointer::pa(:,:)

pa=>fa(1)
call chk02(pa(:,:)(:))
call chk02(pa)
pa=>fb(1)
call chk03(pa(:,:)(:))
call chk03(pa)
end subroutine
end
call s1
print *,'pass'
end
subroutine chk(p)
character(*) p
if (p/='ff')print *,'error202'
end
    function fa(i) result(r)
      use m1
      character(i),pointer::r(:,:)
        r=>ta
    end function 
    function fb(i) result(r)
      use m1
      character(i),pointer::r(:,:)
        r=>ta(1:3:2,:)
    end function 
subroutine chk02(c)
character(*) c(6)
if (c(1)/='a')print *,'error-101'
if (c(2)/='b')print *,'error-102'
if (c(3)/='c')print *,'error-103'
if (c(4)/='d')print *,'error-103'
if (c(5)/='e')print *,'error-103'
if (c(6)/='f')print *,'error-103'
end
subroutine chk03(c)
character(*) c(*)
if (len(c)/=1)print *,'error-151'
if (c(1)/='a')print *,'error-111'
if (c(2)/='c')print *,'error-123'
if (c(3)/='d')print *,'error-133'
if (c(4)/='f')print *,'error-143'
end

