
module mod
  integer(kind=8),target :: t1 = 123
  integer(kind=8),target,dimension(5) :: a1 = (/5,6,7,8,9/)
end module mod

integer(kind=8) function func0 ()
  integer(kind=8),target :: t1 = 3
  integer(kind=8),target,dimension(2,3) :: a1 = reshape((/5,6,7,8,9,10/),(/2,3/))
  type tyf
     integer(kind=8),pointer :: p1 => t1
     integer(kind=8),pointer :: p2(:,:) => a1
     integer(kind=8),pointer :: p3 => a1(2,1)
     integer(kind=8),pointer :: p4(:) => a1(2,2:3)
     integer(kind=8),pointer :: p5(:) => a1(2,1:3:2)
  end type tyf
  type(tyf) :: str0
  print *, str0%p1
  print *, str0%p2
  print *, str0%p3
  print *, str0%p4
  print *, str0%p5

  func0 = 1
end function func0

integer(kind=8) function func1 ()
  use mod
  type tyf
     integer(kind=8),pointer :: p1 => t1
     integer(kind=8),pointer :: p2(:) => a1
     integer(kind=8),pointer :: p3 => a1(4)
     integer(kind=8),pointer :: p4(:) => a1(2:4)
     integer(kind=8),pointer :: p5(:) => a1(1:4:2)
  end type tyf
  type(tyf) :: str1  
  print *, str1%p1
  print *, str1%p2
  print *, str1%p3
  print *, str1%p4
  print *, str1%p5

  func1 = 2
end function func1

program test
  interface
     integer(kind=8) function func0 ()
     end function func0
     integer(kind=8) function func1 ()
     end function func1
  end interface
  integer(kind=8) ::ret
  print *, "func0"
  ret = func0()
  print *, ret

  print *, "func1"
  ret = func1()
  print *, ret
end program test