  integer,target :: s0 = 5
  integer,target :: s1 = 6
  integer,target,dimension(5) :: a0 = (/9,8,7,6,5/)
  integer,target,dimension(5) :: a1 = (/1,2,3,2,1/)
  
  type ty0
     integer :: t1 = 10
     integer :: t2 = 20
     integer,dimension(4) :: t3 = 40
     integer,pointer :: p0 => s0
     integer,pointer,dimension(:) :: p1 => a0
     integer,pointer :: p2 => a0(3)
     integer :: t4 = 30
  endtype ty0

  type ty1
     integer :: t1 = 111
     integer :: t2 = 222
     integer,pointer :: p0 => s0
     integer,pointer,dimension(:) :: p1 => a0
     integer,pointer :: p2 => a0(3)
  endtype ty1

  type(ty1),target :: str0
  type(ty1),target,dimension(3) :: str1 = (/ty1(3,4),ty1(30,40),ty1(300,400)/)
  
end program
