call s3
print *,'pass'
contains
subroutine s1
integer, allocatable, dimension (:) :: a
allocate (a(2))
!$omp parallel firstprivate (a)
a(1) = 1
a(2) = 2
if(any(a/=(/1,2/))) print *, 'err1'
!$omp end parallel
end subroutine
subroutine s2
integer, allocatable, dimension (:) :: a
allocate (a(2))
!$omp parallel do simd lastprivate (a)
do i=1,2
a(i) = i
enddo
!$omp endparalleldosimd
if(a(2)/=2) print *, 'err2'
end subroutine
subroutine s3
integer,dimension(:,:),allocatable::a1,a2
integer::n=2
allocate(a1(n,n))
allocate(a2(n,n))
a1=n
a2=n
!$omp parallel do simd private(a1) firstprivate(a2)
do i=1,n
a1(1,i)=i
a2(1,i)=a2(1,i)+i
end do
!$omp end parallel do simd
if(a1(1,1)/=2) print *,'err3',a1
if(a2(1,1)/=2) print *,'err4',a2
end subroutine
end



