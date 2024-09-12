  
  type ty1
     integer :: t1 = 10
     integer :: t2 = 20
  endtype ty1

  type(ty1),target,dimension(3)  :: str0 = (/ty1(3,4),ty1(30,40),ty1(300,400)/)
  type(ty1),pointer,dimension(:) :: p0 => str0

  print *,p0%t1,p0%t2
  print *,p0(1)%t1,p0(1)%t2
  print *,p0(2)%t1,p0(2)%t2
  print *,p0(3)%t1,p0(3)%t2
  
end program
