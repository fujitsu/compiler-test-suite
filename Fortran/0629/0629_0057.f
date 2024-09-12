      program main
      integer a_initial(10)/10*0/
      integer a_final(10)/10*0/
      integer i,k

      k=10
      do 150 i=1,10
         a_initial(i)=a_initial(i)+1
  160 continue
  150 continue

      k=1
      do 170 i=1,10
         a_final(i)=a_final(i)+k
  170 continue

      write(6,*) 'result  ',a_initial
      write(6,*) 'result  ',a_final
      end
