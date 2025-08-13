 program main
   real :: tempr1
   tempr1 = 1.111E0
   open(unit=4,file='work04.data',status="replace",encoding='DEFAULT',decimal="comma",access="stream",form='formatted')
   write(4,*) tempr1
   close(4)
   write(6,*) "1,11"
   call system("cat work04.data")
   close(unit=4,err=999,status="delete")
   open(unit=4,file='work04.data',encoding='DEFAULT',decimal="point",access="stream",form='formatted')
   write(4,*) tempr1
   close(4)
   write(6,*) "1.11"
   call system("cat work04.data")
   open(unit=4,file='work04.data',encoding='DEFAULT',access="stream",form='formatted')
   write(4,*) tempr1
   close(4)
   write(6,*) "1.11"
   call system("cat work04.data")
   open(4,file='work04.data')
   close(unit=4,err=999,status="delete")
  print *,"pass"
999 continue
 end
