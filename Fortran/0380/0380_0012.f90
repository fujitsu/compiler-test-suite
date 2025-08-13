 program main
  real :: r1,r2
  character*2 :: ch1
  character*20 rou1
  r1 = 1.0E0
  open(10,file='fu50.dat',status="new",recl=125,round="up",form='formatted')
  write(10,*), r1
  close(10)

  open(10,file='fu50.dat',status="old",round="up",form='formatted')
  inquire(UNIT=10, round = rou1)
  read(10,*,iomsg=ch1), r1
  write(6,FMT=99), " ROUND = ",rou1
  write(6,*), r1
  close(10)

  open(10,file='fu50.dat',status="old",round="down",form='formatted')
  inquire(UNIT=10, round = rou1)
  write(6,FMT=99) ," ROUND = ",rou1
  read(10,*,round="up"), r1
  write(6,*), r1
  close(10)

  open(10,file='fu50.dat',status="old",round="zero",form='formatted')
  inquire(UNIT=10, round = rou1)
  write(6,FMT=99), " ROUND = ",rou1
  read(10,*,round="up"), r1
  write(6,*), r1
  close(10)

  open(10,file='fu50.dat',status="old",round="compatible",form='formatted')
  inquire(UNIT=10, round = rou1)
  write(6,FMT=99), " ROUND = ",rou1
  read(10,*,round="up"), r1
  write(6,*), r1
  close(10)

  open(UNIT=10,file='fu50.dat',status="old",round="processor_defined",form='formatted')
  inquire(UNIT=10, round = rou1)
  write(6,FMT=99) , " ROUND = ",rou1
  read(10,*,round="down") , r1
  write(6,*) ,r1
  close(unit=10,err=999,status="delete",iomsg=ch1)
  print *,"pass"
  stop
99 format(A10,A20)
999 continue
  write(6,9) ,ch1
9 format(A4)
 end
