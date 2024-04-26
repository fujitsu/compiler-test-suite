      integer i, sum

      sum=8
      do 500 i=1,10
         if (i.le.3) sum=sum+i
         sum=sum+i
  500 continue

      if (sum.eq.69) then
         write(6,*) " ## OK ## "
      else
         write(6,*) " ## NG ## ",sum
      endif

      end
