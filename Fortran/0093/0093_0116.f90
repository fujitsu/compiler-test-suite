complex :: x(3)
  x(3)= (3.67,8.97)
  if (x(3)%RE-x(3)%IM) 1,2,3
  1  if((x(3)%RE-x(3)%IM)  .ge.  0) print*,101
     goto 9
  2  if((x(3)%RE-x(3)%IM)  .ne.  0) print*,102
     goto 9
  3  if((x(3)%RE-x(3)%IM)  .le.  0) print*,103
  9  print*, "Pass"
end
