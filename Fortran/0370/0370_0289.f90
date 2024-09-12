  implicit none
  type tym
     integer,dimension(5)   :: m1 = (/10,20,30,40,50/)
     integer,dimension(3,3) :: m2 = reshape((/1,2,3,4,5,6,7,8,9/),(/3,3/))
  end type tym
  type(tym),target :: tm0 = tym((/40,50,60,70,80/),50)
  type(tym),target :: tm1

  type tyt
     integer,pointer,dimension(:) :: p0 => tm0%m1(2:4:2)
     integer,pointer,dimension(:,:) :: p1 => tm1%m2(1:3:2,1:3:2)
  end type tyt
  type(tyt) :: tt0

  print *, tm0
  print *, tm1
  print *, tt0%p0
  print *, tt0%p1
  
end program
