  type tp
     integer :: s1    = 5
     integer :: s2(3) = 6
  end type tp
  type(tp),target :: t1,t2
  class(*),pointer :: x2=>t2  
print *,'pass'
end
