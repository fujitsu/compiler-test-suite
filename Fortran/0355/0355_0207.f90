  call sub1
  call sub2
  print*,"OK"
end program

subroutine sub1
  integer*4 sum1/1/
  integer*4 i4sum/1/
  integer*8 i8sum/1/
  integer*4 a(10)/1,2,3,4,5,6,7,8,9,10/
  integer*8 b(10)/1,2,3,4,5,6,7,8,9,10/

  
  do i=4,5
     sum1=sum1*a(i)
  enddo
  !$omp simd reduction(*:i4sum)
  
  do i=4,5
     i4sum=i4sum*a(i)
  enddo
  !$omp simd reduction(*:i8sum)
  
  do i=4,5
     i8sum=i8sum*b(i)
  enddo
  if (sum1 .ne. i4sum .or. sum1 .ne. i8sum) then
     print*,"NG1", sum1, i4sum, i8sum
  endif
end subroutine sub1

subroutine sub2
  real*4 sum1/1/
  real*4 i4sum/1/
  real*8 i8sum/1/
  real*4 a(10)/1,2,3,4,5,6,7,8,9,10/
  real*8 b(10)/1,2,3,4,5,6,7,8,9,10/

  
  do i=4,5
     sum1=sum1*a(i)
  enddo
  !$omp simd reduction(*:i4sum)
  
  do i=4,5
     i4sum=i4sum*a(i)
  enddo
  !$omp simd reduction(*:i8sum)
  
  do i=4,5
     i8sum=i8sum*b(i)
  enddo
  if (sum1 .ne. i4sum .or. sum1 .ne. i8sum) then
     print*,"NG1", sum1, i4sum, i8sum
  endif
end subroutine sub2
