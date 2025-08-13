 program main
  real :: r1,r2
  character*2 :: ch1
  character*20 rou1
  r1 = 1.66E0
  open(9,file='open09.data',status="new",recl=125,round="up",form='formatted')
  write(9,*) r1
  close(9)

  open(9,file='open09.data',status="old",round="up",form='formatted')
  read(9,*,iomsg=ch1) r1
  inquire(UNIT=9, round = rou1)
  write(6,FMT=99) " ROUND = ",rou1
99 format(A4)
  write(6,*) r1
  close(9)

  open(9,file='open09.data',status="old",round="up",form='formatted')
  read(9,*,round="up") r1
  write(6,*) r1
  close(9)

  open(9,file='open09.data',status="old",round="up",form='formatted')
  read(9,*,round="down") r1
  write(6,*) r1
  close(unit=9,err=999,status="delete",iomsg=ch1)
  print *,"pass"
  stop
999 continue
  write(6,9) ch1
9 format(A4)
 end
