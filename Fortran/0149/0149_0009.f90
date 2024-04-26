function f1(init)
  integer :: f1
  logical :: init
  block
    integer, save :: i
    if (init) then
       i = 0
    else
       i = i + 1
    end if
    f1 = i
  end block
  return
end function f1

function f2(init)
  integer :: f2
  logical :: init
  block
    integer :: j
    save
    if (init) then
       j = 0
    else
       j = j + 1
    end if
    f2 = j
  end block
  return
end function f2

program main
  integer :: i, f1, f2
  i = f1(.true.)
  i = f1(.false.)
  if (i /= 1) print *,1
  i = f1(.false.)
  if (i /= 2) print *,2


  i = f2(.true.)
  i = f2(.false.)
  if (i /= 1) print *,3
  i = f2(.false.)
  if (i /= 2) print *,4
  print *,'pass'
end program main

