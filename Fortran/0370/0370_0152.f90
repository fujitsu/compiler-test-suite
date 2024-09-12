  type tp
     integer :: s1    = 5
     integer :: s2(3) = 6
  end type tp
  type(tp),target :: t1,t2
  class(tp),pointer :: x1=>t1
  class(*) ,pointer :: x2=>t2

  print *,x1%s1
  
  select type(x2)
  type is (tp)
     print *, "tp"
     print *, x2%s1
  end select
  
end program

