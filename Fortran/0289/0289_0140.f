      program main
      integer*4 fusu1(10),fusu2(10),fusu3(10),sum1,sum2,sum3,sum4,sum5
*
      do 10 i=1,10
         fusu1(i)=(-3)*i
   10 continue
*
      k=10
      do 20 i=1,10
         fusu2(i)=fusu1(k)
         k=k-1
   20 continue
*
      n=i*(-2)
      do 30 j=10,1,-2
         fusu1(j-1)=n
         fusu2(j)=j*i
   30 continue
*
      sum1=0
      sum2=0
      sum3=0
      do 40 i=1,10
         sum1=sum1+fusu1(i)
         sum2=sum2+fusu2(i)
   40 continue
      do 50 i=1,10
         fusu3(i)=0
         do 51 j=1,10
            fusu3(i)=fusu3(i)+fusu1(i)*fusu2(j)
   51 continue
         sum3=sum3+fusu3(i)
   50 continue
*
      do 60 i=1,9
         do 61 j=i+1,10
            if(fusu1(i).gt.fusu1(j)) then
               iwork=fusu1(i)
               fusu1(i)=fusu1(j)
               fusu1(j)=iwork
            endif
            if(fusu2(i).gt.fusu2(j)) then
               iwork=fusu2(i)
               fusu2(i)=fusu2(j)
               fusu2(j)=iwork
            endif
   61    continue
   60 continue
      sum4=0
      sum5=0
      do 70 i=1,10
         sum4=sum4+fusu1(i)
         sum5=sum5+fusu2(i)
   70 continue
      isum1=sum1*sum2
      isum2=sum4*sum5
      write(6,*) sum1,sum2,sum3,sum4,sum5
      if((isum1.eq.isum2).and.(isum1.eq.sum3)) then
         write(6,*) '*** ok ***'
      else
         write(6,*) '*** ng ***'
      endif
      stop
      end
