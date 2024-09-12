      parameter(n=10)
      integer c2bs(10,10)/100*0/
      call sub1(c2bs,n)
      end

      subroutine sub1(c2bs,n)
      integer c2bs(n,n),c2cs(1,1),func2
      do 10 i=1,1
           c2cs(i,i)=func2(c2bs(1,i))
   10 continue
      write(6,*) c2cs
      return
      end

      integer function func2(c1as)
      integer c1as(10)
      func2=0

      do 20 i=1,10
           func2=c1as(i)
           c1as(i)=2
   20 continue
      return
      end
