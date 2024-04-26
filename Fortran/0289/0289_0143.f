      program main
      integer*4 fusu1(10),fusu2(10),fusu3(10),sum3
*
*
      data fusu1/-22,-6,-22,-12,-22,-18,-22,-24,-22,-30/
      data fusu2/-30,22,-24,44,-18,66,-12,88,-6,110/
      sum3=0
      do 50 i=1,10
         fusu3(i)=0
         do 51 j=1,10
            fusu3(i)=fusu3(i)+fusu1(i)*fusu2(j)
   51 continue
         sum3=sum3+fusu3(i)
   50 continue
      if(sum3.eq.-48000) then
        write(6,*) '** ok **'
      else
        write(6,*) '** ng **'
        write(6,*) sum3
      endif
      stop
      end
