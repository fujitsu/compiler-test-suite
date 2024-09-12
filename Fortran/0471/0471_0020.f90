  type tp
     integer :: s1    = 5
     integer :: s2(3) = 6
  end type tp
  type(tp),target :: t1(1),t2(1)
  class(*),pointer :: x2=>t2(1)  
  class(tp),pointer :: x3(:)=>t2(1:1) 
print *,'pass'
end
