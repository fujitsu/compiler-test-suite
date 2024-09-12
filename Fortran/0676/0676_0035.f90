program main
  logical(kind=4) flag1
  logical(kind=4) flag2
  flag1=.true.
  flag2=.false.
  call sub(flag1,flag2)
end program main

subroutine init(array, ans)
  real(kind=4),dimension(20) :: array
  real(kind=4),dimension(20) :: ans
  do idx=1,20
     array(idx) = real(idx)
     ans(idx) = 0.0
  end do
end subroutine init

subroutine sub(flag1, flag2)
  logical(kind=4) flag1
  logical(kind=4) flag2
  real(kind=4),dimension(20) :: array
  real(kind=4),dimension(20) :: ans
  call init(array, ans)
  do idx=1,20
     if (flag1 .neqv. flag2) then
        ans(idx) = array(idx)
     endif
  end do
  print*,ans
end subroutine sub
