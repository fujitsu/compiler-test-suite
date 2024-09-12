subroutine sub(a, n)
  implicit none
#ifdef __ARM_FEATURE_SVE
  integer, parameter :: kk = selected_real_kind(3)
#else
  integer, parameter :: kk = 4
#endif
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
#ifdef __ARM_FEATURE_SVE
  integer, parameter :: kk = selected_real_kind(3)
#else
  integer, parameter :: kk = 4
#endif
  integer*8 i,n
   complex(kind=kk) data, result
   common/input/data(5), result
   data data/(1.0,1.0),(2.0,0.3),(0.5,3.1),(-3.0,0.1),(0.3,-2.0)/
   data result/(55936.0000,9320.00000)/
end
program main
  implicit none
#ifdef __ARM_FEATURE_SVE
  integer, parameter :: kk = selected_real_kind(3)
#else
  integer, parameter :: kk = 4
#endif
  integer*8 i,n
  parameter(n=13)
  complex(kind=kk) a,ss
  complex(kind=4) t
  common/com1/a(n)
  common/com2/ss
   complex(kind=kk) data, result
   common/input/data(5), result
  ss =1.0
  do i=1,n
     a(i) = data(mod(i,5)+1)
  end do
  call sub(a, n)
  if (abs(ss-result) < 100.) then
     print *, "PASS"
  else
     t = ss-result
     print *, real(ss,4)
     print *, abs(t)
  endif
end program
