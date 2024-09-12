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
end interface
p=>ta2(2,3)
if (len(p)/=2)print *,'error-401'
call       ss1(p,pa)
contains
subroutine ss1(p,pa)
  character(:),pointer::p
  character(:),pointer::pa(:,:)
i1=1;i2=2;i3=3

pa=>fa(1)
call chk02(pa(:,:)(:))
call chk02(pa)
call chk02(pa(1:3,1:2))
call chk02(pa(i1:i3,i1:i2))
call chk02(pa(1:3,1:2)(:))
call chk02(pa(i1:i3,i1:i2)(:))
call chk02(pa(:,:)(i1:i2-i1))
call chk02(pa(1:3,1:2)(i1:i2-i1))
call chk02(pa(i1:i3,i1:i2)(i1:i2-i1))
call chk02(pa(1:3,1:2)(i1:i2-i1))
if (len(p)/=2)print *,'error-301'
call chk(p)
call chk(p(:))
call chk(p(1:2))
call chk(p(:2))
call chk(p(1:))
call chk(p(i1:i2))
end subroutine
end
call s1
print *,'pass'
end
subroutine chk(p)
character(*) p
if (len(p)/=2)print *,'error201',len(p)
if (p/='ff')print *,'error202'
end
    function fa(i) result(r)
      use m1
      character(i),pointer::r(:,:)
      if (i==1) then
        r=>ta
      else
        r=>ta2
      endif
    end function 
subroutine chk02(c)
character(*) c(3)
if (c(1)/='a')print *,'error-101'
if (c(2)/='b')print *,'error-102'
if (c(3)/='c')print *,'error-103'
end

