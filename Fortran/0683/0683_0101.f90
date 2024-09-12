subroutine sub(a, n)
  implicit none
  integer, parameter :: kk = 4
  integer*8 i,n
  complex(kind=kk) a(n),ss
  common/com2/ss
  !$omp simd reduction(*:ss)
  do i=1,n
     ss = ss * a(i)
  end do
end subroutine

block data
   implicit none
  integer, parameter :: kk = 4
  integer*8 i,n
   complex(kind=kk) data, result
   common/input/data(5), result
   data data/(1.0,1.0),(2.0,0.3),(0.5,3.1),(-3.0,0.1),(0.3,-2.0)/
   data result/(-15069242.0,-9596797.00)/
end
program main
  implicit none
  integer, parameter :: kk = 4
  integer*8 i,n
  parameter(n=21)
  complex(kind=kk) a,ss
  common/com1/a(n)
  common/com2/ss
   complex(kind=kk) data, result
   common/input/data(5), result
  ss =1.0
  do i=1,n
     a(i) = data(mod(i,5)+1)
  end do
  call sub(a, n)
  if (abs(ss-result) < 5.0) then
     print *, "PASS"
  else
     print *, ss, abs(ss-result)
  endif
end program
