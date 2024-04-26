module m1
contains
  subroutine sub_b(kk)
    real :: kk
    if (kk /= 1) print *,'error-1'
  end subroutine sub_b
end module m1

subroutine sub_a(kk)
  use m1
  real, intent(out):: kk
  kk = 1
  do n = 1, 1
     call sub_b(kk)
     if (kk /= 1) print *,'error-2'
  end do
end subroutine sub_a

program main
  real :: kk
  call sub_a(kk)
  print *,'pass'
end program main
