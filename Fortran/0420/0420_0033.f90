subroutine s1(n2)
character(3) b02(n2:-100)
!$omp parallel
b02(-100)='abc'
if (b02(-100)/='abc') print *,304
n2=2
block
character(3) b02(n2)
b02(2)='123'
if (b02(2)/='123') print *,303
end block
!$omp end parallel
if (b02(-100)/='abc') print *,304
end
n2=-100
call s1(n2)
print *,'pass'
end
