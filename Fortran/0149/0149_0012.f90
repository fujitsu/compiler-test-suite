program main
  type ty
     integer :: i=1
  end type ty
  type(ty) :: obj1
  block 
    type ty
       integer :: i=2
    end type ty
    type(ty) :: obj2
    if (obj2%i /= 2) print *,1
  end block
  if (obj1%i /= 1) print *,2
  block 
    type(ty) :: obj2
    if (obj2%i /= 1) print *,3
  end block
  print *,'pass'
end program main
