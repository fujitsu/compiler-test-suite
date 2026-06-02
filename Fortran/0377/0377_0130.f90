call test01()
call test02()
print *,"pass"
end
subroutine test01()
i1=6
!$omp parallel reduction(+:i1)
!$omp parallel reduction(+:i1)
!$omp parallel reduction(+:i1)
!$omp parallel reduction(+:i1)
call sub( (/ character (i1) :: /) )
i1=7
!$omp end parallel
!$omp end parallel
!$omp end parallel
!$omp end parallel
i1=6
call sub( (/ character (i1) :: /) )
call sub2( (/ character (ifun(i1)) :: /) )
if (i1.ne.16) print *,'fail'
i1=6
call sub2( (/ character (ifun(i1)) :: "a"(1:ifun(i1)-15)//"a"(1:ifun(i1)-15) /) )
i1=6;i2=6;i3=6;i4=6
call sub2( (/ character (ifun(i1)) :: "a"(size([character (ifun(i2)) ::])+1:ifun(i3)-15)//"a"(1:ifun(i4)-15) /) )
contains
subroutine sub(ccc)
character(*) :: ccc(*)
if (len(ccc(1)).ne.6) print *,'fail'
end subroutine
subroutine sub2(ccc)
character(*) :: ccc(*)
if (len(ccc(1)).ne.7) print *,'fail'
end subroutine
end

function ifun(ii)
ifun=ii+1
ii=ii+10
end

module moda
character :: a="a"
end
subroutine test02()
use moda
character*100 :: ccc(100)
ccc= [character*100:: ("a",i=1,100)]
if (ccc(1).ne."a") print *,'fail'
if (ccc(1).ne."a ") print *,'fail'
ccc= [character*100:: ("a"//a,i=1,100)]
if (ccc(1).ne."aa") print *,'fail'
if (ccc(1).ne."aa ") print *,'fail'
end
