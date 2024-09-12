
  implicit none
  integer,target :: t1 = 5
  integer,target :: t2 = 10
  integer,target :: tx(5) = (/9,8,7,6,5/)
  integer,target :: ta(2) = (/6,7/)
  type ty1
     sequence
     integer,pointer :: p1 =>t1
     integer,pointer :: p2(:) =>ta
     integer,pointer :: p3 =>tx(4)
  end type ty1
  type (ty1) :: str

  common /abc/ t1,t2
  common /def/ ta
  
  print *, str%p1
  print *, str%p2
  print *, str%p3
end program
