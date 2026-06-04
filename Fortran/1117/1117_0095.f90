call test01()
print *,'pass'
end

subroutine test01()
integer(kind=4) a ,b ,c
integer(kind=4) a1,b1,c1
integer(kind=4) a2,b2,c2
equivalence(a,a1,a2)
equivalence(b,b1,b2)
equivalence(c,c1,c2)
common /com01/ a,b,c
a=1
b=2
c=3
CALL OMP_SET_NUM_THREADS(1)
!$omp parallel shared(/com01/)
if (a .ne.1) print *,"fail"
if (b .ne.2) print *,"fail"
if (c .ne.3) print *,"fail"
!$omp do lastprivate(/com01/)
do i=1,1
a=11
b=12
c=13
end do
!$omp endparallel
end
