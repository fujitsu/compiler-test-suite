subroutine sub(xxx, yyy, zzz, n)
  real(kind=8) :: xxx(100), yyy(100), zzz(100)
  integer(kind=8) :: i

  zzz(1) = xxx(1) ** yyy(1)
  do i=2,n
     zzz(i) = xxx(i) ** yyy(i)
  end do
end subroutine sub

program main
  real(kind=8)    :: xxx(100), yyy(100), zzz(100)
  integer(kind=8) :: i
  do i=1,100
     xxx(i) = i*1.0
     yyy(i) = i*1.1
  end do
  call sub(xxx, yyy, zzz, 100)
  print *,zzz(1)
  print *,"OK"
end program main
