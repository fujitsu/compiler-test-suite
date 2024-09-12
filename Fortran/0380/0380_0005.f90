 program main
  real :: r1,r2
  r1 = 1.66E0
  print *,r1
  open(10,file='work.data',access="stream",round="up",form='formatted')
  write(10,*) r1

  close(10)
  call system("cat work.data")
  open(10,file='work.data')
  close(unit=10,err=999,status="delete")
  print *,"pass"
999 continue
 end

