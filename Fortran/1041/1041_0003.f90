program main

  call ext_sub02

  print *,"pass"
end

subroutine ext_sub02

  call sub

contains
subroutine sub
  integer arr(10)

  do i=1,1
    call ext_sub01
  end do
  do i=1,10
    arr(i)=ext_fun01(i)
  end do
  if (all(arr.ne.(/1,2,3,4,5,6,7,8,9,10/))) stop "NG 02"
end subroutine
end

subroutine ext_sub01
  integer arr(10)

  do i=1,10
    arr(i)=i
  end do
  if (all(arr.ne.(/1,2,3,4,5,6,7,8,9,10/))) stop "NG 01"
end

function ext_fun01(i)
  ext_fun01 = i
end
