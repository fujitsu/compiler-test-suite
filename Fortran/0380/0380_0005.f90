 program main
  real :: r1,r2
  r1 = 1.66E0
  print *,r1
  open(11,file='work11.data',access="stream",round="up",form='formatted')
  write(11,*) r1

  close(11)
  call system("cat work11.data")
  open(11,file='work11.data')
  close(unit=11,err=999,status="delete")
  print *,"pass"
999 continue
 end
