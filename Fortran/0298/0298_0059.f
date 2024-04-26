      integer i, sum
      sum=8
      do 500 i=1,10
      if (i.le.3) goto 510
  520 sum=sum+i
  500 continue
      goto 599
  510 sum=sum+999
      goto 520
  599 continue

      if (sum.eq.3060) then
         write(6,*) " ## OK ## "
      else
         write(6,*) " ## NG ## ",sum
      endif
      end
