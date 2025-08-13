 program main
  real :: r1,r2
  character*2 :: ch1
  ch1="00"
  r1 = 1.66E0
  open(12,file='open12.data',status="new",recl=125,round="up",form='formatted')
  write(12,*) r1
  close(12)

  open(12,file='open12.data',status="old",round="up",form='formatted')
  read(12,*) r1
  write(6,*) r1
  close(12)

  open(12,file='open12.data',status="old",round="up",form='formatted')
  read(12,*,round="up") r1
  write(6,*) r1
  close(12)

  open(12,file='open12.data',status="old",round="up",form='formatted')
  read(12,*,round="down") r1
  write(6,*) r1
  close(unit=12,err=999,status="delete",iomsg=ch1)
  print *,"pass"
  stop
999 continue
  write(6,9) ch1
9 format(A4)
 end
