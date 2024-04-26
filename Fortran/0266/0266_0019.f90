integer :: i,j

do j = 1,4
 aa: block
  integer :: bb(j+1)
   do i=1,j+1
    bb(i) = i+1
    print*,"j i bb(i)",j,i,bb(i)
    if (i==j) exit aa
   end do
end block aa
  print*,"end of outer iter: ",j
end do
end
