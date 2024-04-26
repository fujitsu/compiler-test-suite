program pro
  real,parameter :: arr(2)=(/3.0,4.0/)
  integer, parameter :: d=1
  integer :: x=NORM2(dim=d,x=arr)
  if(x/=5) print *, 101
  print *, "pass"
end
