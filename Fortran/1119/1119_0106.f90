  call s1
  call s2
  call s3
  call s4
print *,'pass'
contains
  subroutine s1
  integer,dimension(:),pointer::a1,a2
integer::n=2
allocate(a1(n))
allocate(a2(n))
a1=10
a2=10
!$omp parallel reduction(*:a1) reduction(*:a2)
a1 = a1 * 2
a2 = a2 * 2
!$omp end parallel
if(any(a1/=a2)) print *,'err'
end subroutine s1
  subroutine s2
  integer,dimension(:),pointer::a1,a2
integer::n=2
allocate(a1(n))
allocate(a2(n))
a1=10
a2=10
!$omp sections reduction(*:a1) reduction(*:a2)
a1 = a1 * 2
a2 = a2 * 2
!$omp end sections
if(any(a1/=a2)) print *,'err'
end subroutine s2
  subroutine s3
  integer,dimension(:),pointer::a1,a2
integer::n=2
allocate(a1(n))
allocate(a2(n))
a1=10
a2=10
!$omp do reduction(*:a1) reduction(*:a2)
do i=1,2
a1 = a1 * 2
a2 = a2 * 2
enddo
!$omp end do
if(any(a1/=a2)) print *,'err'
end subroutine s3
  subroutine s4
  integer,dimension(:),pointer::a1,a2
integer::n=2
allocate(a1(n))
allocate(a2(n))
a1=10
a2=10
!$omp simd reduction(*:a1) reduction(*:a2)
do i=1,2
a1 = a1 * 2
a2 = a2 * 2
enddo
!$omp end simd
if(any(a1/=a2)) print *,'err'
end subroutine s4
end
