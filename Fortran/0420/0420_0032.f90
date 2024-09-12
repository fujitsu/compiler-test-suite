subroutine s1
!$omp parallel
n2=2
n3=3
block
character(3) b02(n2)
if (len(b02)/=3) print *,302
b02(2)='123'
if (b02(2)/='123') print *,303
end block
!$omp end parallel
end
call s1
print *,'pass'
end
