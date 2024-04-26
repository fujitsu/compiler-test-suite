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
     call sub_b((kk))
     if (kk /= 1) print *,'error-2'
  end do
end subroutine sub_a
subroutine sub_aa(kk)
  use m1
  real, intent(out):: kk
  kk = -1
  do n = 1, 1
     call sub_b(kk+2)
     if (kk /= -1) print *,'error-21'
  end do
end subroutine
subroutine sub_aaa(kk)
  use m1
  real, intent(out):: kk(2)
  kk(2) = 1
  do n = 1, 1
     call sub_a(kk(2))
     if (kk(2) /= 1) print *,'error-22'
  end do
end subroutine

program main
  real :: kk
  real:: k(2) 
  call sub_a(kk)
  call sub_aa(kk)
  call sub_aaa(k)
  print *,'pass'
end program main



