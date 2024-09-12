  implicit none

  type tya
     integer :: t1 = 5
     integer :: ta(2) = (/6,7/)
  end type tya
  type(tya),target :: aaa

  type tyb
     integer :: t1 = 2
     integer :: ta(2) = (/3,4/)
  end type tyb
  type(tyb),target :: bbb

  type ty1
     type(tya),pointer :: ma => aaa
     type(tyb),pointer :: mb => bbb
  end type ty1
  type (ty1) :: str1

  print *, aaa
  print *, bbb
  print *, str1%ma
  print *, str1%mb

end program
