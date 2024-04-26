      program main
      data a1,a2,a3,a4,a5,b1,b2,b3,b4,b5/5*0.0,5*1.0/

      do 10 i=1,2
         a1=6
         a2=3
         a3=a3+1
         if (b3.eq.1.0) then
            a3=a3+2
         endif
   10 continue
      b3=a3
      do 40 i=1,1
         a4=3
         a5=3
   40 continue
      write(6,*) a1,a2,a3,a4,a5
      end
