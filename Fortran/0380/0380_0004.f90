 program main
   real :: tempr1
   tempr1 = 1.11
   open(10,file='work10.data',status="replace",access="stream",form='formatted')
   write(10,*,decimal="comma") tempr1
   write(10,*,decimal="point") tempr1
   write(10,*) tempr1
   close(10)
   call system("cat work10.data")
   open(10,file='work10.data')
   close(unit=10,err=999,status="delete")
  print *,"pass"
  stop
999 continue
  print *,"## NG ##"
 end
