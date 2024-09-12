  type tp
     integer :: s1    = 5
     integer :: s2(3) = 6
  end type tp
type ty1
  type(tp) :: t1,t2(1)
end type
type(ty1) ,target :: aa
  class(*),pointer :: x2=>aa%t1  
  class(tp),pointer :: x3(:)=>aa%t2 (1:1)
print *,'pass'
end
