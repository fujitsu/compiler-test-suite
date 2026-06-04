  call s1
  call s2
  call s3
  call s4
print *,'pass'
contains
subroutine s1  
  real, dimension(:), pointer :: a
real, dimension(:), pointer :: b
integer,parameter::n=16
call omp_set_dynamic (.false.)
call omp_set_num_threads (n)
allocate (a(5))
allocate (b(10))
a = 10
b = 20
!$omp parallel reduction (+:a, b) private (i, j)
do i = 1, 5
 a(i) = a(i) + 1
end do
do j = 1, 10
 b(j) = b(j) + 20
end do
!$omp end parallel
do k=1,5
if(a(k)/=(real(10)+real(n))) print *,'err1'
enddo
do l=1,10
if(b(l)/=(real(20)+real(n*20))) print *,'err2'
enddo
end subroutine s1
subroutine s2  
  real, dimension(:), pointer :: a
real, dimension(:), pointer :: b
integer,parameter::n=16
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
do k=1,5
if(a(k)/=(real(11))) print *,'err3',a
enddo
do l=1,10
if(b(l)/=(real(40))) print *,'err4',b
enddo
end subroutine s2
subroutine s3  
  real, dimension(:), pointer :: a
real, dimension(:), pointer :: b
integer,parameter::n=16
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
do k=1,5
if(a(k)/=(real(11))) print *,'err3',a
enddo
do l=1,10
if(b(l)/=(real(40))) print *,'err4',b
enddo
end subroutine s3
subroutine s4  
  real, dimension(:), pointer :: a
real, dimension(:), pointer :: b
integer,parameter::n=16
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
do k=1,5
if(a(k)/=(real(11))) print *,'err3',a
enddo
do l=1,10
if(b(l)/=(real(40))) print *,'err4',b
enddo
end subroutine s4
end
