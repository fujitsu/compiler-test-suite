 program main
  real :: r1,r2
  character*2 :: ch1
  character*20 rou1
  r1 = 1.66E0
  open(10,file='open.data',status="new",recl=125,round="up",form='formatted')
  write(10,*) r1
  close(10)

  open(10,file='open.data',status="old",round="up",form='formatted')
  read(10,*,iomsg=ch1) r1
  inquire(UNIT=10, round = rou1)
  write(6,FMT=99) " ROUND = ",rou1
99 format(A4)
  write(6,*) r1
  close(10)

  open(10,file='open.data',status="old",round="up",form='formatted')
  read(10,*,round="up") r1
  write(6,*) r1
  close(10)

  open(10,file='open.data',status="old",round="up",form='formatted')
  read(10,*,round="down") r1
  write(6,*) r1
  close(unit=10,err=999,status="delete",iomsg=ch1)
  print *,"pass"
  stop
999 continue
  write(6,9) ch1
9 format(A4)
 end

