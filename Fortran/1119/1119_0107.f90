  call s1
  call s2
  call s3
print *,'pass'
contains
  subroutine s1
  real, dimension(:), pointer :: a
real, dimension(:), pointer :: b
integer,parameter::n=15
call omp_set_dynamic (.false.)
call omp_set_num_threads (n)
allocate (a(5))
allocate (b(10))
a = 10
b = 20
!$omp parallel reduction (+:a, b) 
do i = 1, 5
a(i) = a(i) + 1
end do
do j = 1, 10
b(j) = b(j) + 20
end do
!$omp end parallel
if(any(a/=(/((real(10)+real(n)),k=1,5)/))) print *,'err1'
if(any(b/=(/((real(20)+real(n*20)),l=1,10)/))) print *,'err2',b
end subroutine s1
  subroutine s2
  real, dimension(:), pointer :: a
real, dimension(:), pointer :: b
integer,parameter::n=15
call omp_set_dynamic (.false.)
call omp_set_num_threads (n)
allocate (a(5))
allocate (b(10))
a = 10
b = 20
!$omp sections reduction (+:a, b) private (i, j)
do i = 1, 5
a(i) = a(i) + 1
end do
do j = 1, 10
b(j) = b(j) + 20
end do
!$omp end sections
if(any(a/=(/((real(11)),k=1,5)/))) print *,'err3',a
if(any(b/=(/((real(40)),l=1,10)/))) print *,'err4',b
end subroutine s2
  subroutine s3
  real, dimension(:), pointer :: a
real, dimension(:), pointer :: b
integer,parameter::n=15
call omp_set_dynamic (.false.)
call omp_set_num_threads (n)
allocate (a(5))
allocate (b(10))
a = 10
b = 20
!$omp do reduction (+:a, b) private (i, j)
do i = 1, 5
a(i) = a(i) + 1
end do
!$omp end do
do j = 1, 10
b(j) = b(j) + 20
end do
if(any(a/=(/((real(11)),k=1,5)/))) print *,'err5',a
if(any(b/=(/((real(40)),l=1,10)/))) print *,'err6',b
end subroutine s3
  subroutine s4
  real, dimension(:), pointer :: a
real, dimension(:), pointer :: b
integer,parameter::n=15
call omp_set_dynamic (.false.)
call omp_set_num_threads (n)
allocate (a(5))
allocate (b(10))
a = 10
b = 20
!$omp simd reduction (+:a, b)
do i = 1, 5
a(i) = a(i) + 1
end do
!$omp end simd
do j = 1, 10
b(j) = b(j) + 20
end do
if(any(a/=(/((real(11)),k=1,5)/))) print *,'err7',a
if(any(b/=(/((real(40)),l=1,10)/))) print *,'err8',b
end subroutine s4
end
