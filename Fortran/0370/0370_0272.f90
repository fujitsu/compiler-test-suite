
  integer,target :: s1 = 1
  integer,target :: a1(3) = (/5,6,7/)

  type metp
     integer::m0=0
     integer::m1=1
     integer,pointer :: p0 => s1
     integer::m2=2
  end type metp
  
  type tp
     integer :: s0 = 0
     type(metp) :: t0
     integer,pointer :: p0 => s1
     integer,pointer :: p1(:) => a1
     integer :: s1 = 10
  endtype tp
  type(tp),target :: str1

  print *,str1%t0%p0
  print *,str1%p0
  print *,str1%p1
  print *,str1%s1
end program
