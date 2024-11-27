 program main
   character*4 :: ctemp
   ctemp = 4_"1111"
   open(10,file='work.data',encoding='UTF-8',access="stream",form='formatted')
   write(10,*,decimal="comma") tempr1
   write(10,*,decimal="point") tempr1
   write(10,*) tempr1
   close(10)
   call system("more work.data")
  print *," pass"
 end
