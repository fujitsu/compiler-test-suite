program main
  integer :: arr(10), int01
  arr = 1
  arr = arr
  arr = arr
  do int01=1,10
    arr(int01)=1
  enddo
  print *,"pass"
end
