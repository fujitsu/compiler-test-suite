      integer a,b,sum
      write(6,*)'##### started #####'
      k=2
      sum=0
      do 10 i=1,5
         a=0
         b=0 
         a=k**i+i
         if(i.eq.10)then
           goto 10
         end if
         b=k**i+i**i
         write(6,1000)i,a,b
 1000    format(1x,'i=',i2,'   then a=',i5,',b=',i5)
         sum=sum+a+b
 10   continue
      if(sum.eq.3552)then
        write(6,*)'***** OK *****'
      else
        write(6,*)'***** NG *****'
      end if  
      write(6,*)'##### ended #####'
      end

