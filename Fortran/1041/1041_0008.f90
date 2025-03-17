module mod
contains
subroutine mod_sub
  integer arr(10)

  do cnt=1,1
    call sub01
  end do
  do i=1,10
    arr(i)=fun01(i)
  end do
  if (all(arr.ne.(/1,2,3,4,5,6,7,8,9,10/))) stop "NG 02"

contains
subroutine sub01
  integer arr(10)

  do i=1,10
    arr(i)=i
  end do
  if (all(arr.ne.(/1,2,3,4,5,6,7,8,9,10/))) stop "NG 01"
end subroutine
function fun01(i)
  fun01 = i
end function
end subroutine
end

program main
  use mod

  call mod_sub

  print *,"pass"
end

