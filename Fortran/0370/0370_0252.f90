  real,target :: t1 = 5
  integer,target :: t2 = 10

  type tp
     real,pointer :: p1 =>t1
     integer,pointer :: p2 =>t2
  end type tp
  type(tp),target :: str
  class(tp),pointer :: x1=>str
  class(*),pointer :: x2=>str

  print *, "x1:",x1%p1,x1%p2
  
  select type(x2)
  type is (tp)
     print *, "x2:",x2%p1,x2%p2
  end select
end program

