  implicit none
  integer,target :: t1 = 5
  integer,target :: t2 = 10
  integer,target :: ta(2) = (/6,7/)

  type tya
     integer,pointer :: p1 =>t1
     integer,pointer :: p2 =>ta(2)
  end type tya

  type ty1
     type(tya) :: ma
     integer,pointer :: pt =>t2
  end type ty1
  type (ty1) :: str1

  print *, str1%ma%p1
  print *, str1%ma%p2
  print *, str1%pt

end program
