integer :: v(2)
integer :: w
integer :: res(2)
  v = 8
  w = 9
call omp_set_num_threads(1)
  associate(u => v,x=>w)
  !$omp parallel private(v,w)
   v = 1
   u = 2
   u(u)=5
  res=u+x
  if(u(1) .ne. 2)print*,"101"
  if(u(2) .ne. 5)print*,"102"
  if(res(1) .ne. 11)print*,"103"
  if(res(2) .ne. 14)print*,"104"
  !$omp end parallel
  print*,"pass"
  end associate
end

