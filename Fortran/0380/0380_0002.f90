 program main
   real :: tempr1
   tempr1 = 1.111E0
   open(unit=10,file='work.data',status="replace",encoding='DEFAULT',decimal="comma",access="stream",form='formatted')
   write(10,*) tempr1
   close(10)
   write(6,*) "1,11"
   call system("cat work.data")
   close(unit=10,err=999,status="delete")
   open(unit=10,file='work.data',encoding='DEFAULT',decimal="point",access="stream",form='formatted')
   write(10,*) tempr1
   close(10)
   write(6,*) "1.11"
   call system("cat work.data")
   open(unit=10,file='work.data',encoding='DEFAULT',access="stream",form='formatted')
   write(10,*) tempr1
   close(10)
   write(6,*) "1.11"
   call system("cat work.data")
   open(10,file='work.data')
   close(unit=10,err=999,status="delete")
  print *,"pass"
999 continue
 end

