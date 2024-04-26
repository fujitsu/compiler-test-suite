program main
  integer :: arr(10)
  integer :: int_cnt

  do int_cnt=1,10
    arr(int_cnt)=1
  enddo
  arr = arr
  print *,"pass"
end
