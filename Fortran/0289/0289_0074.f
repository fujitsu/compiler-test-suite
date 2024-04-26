      program main
      common /init1/a,b
      integer*4 a(10),b(10)
      integer*4 c(10)
      integer*4 d,e,i,sum
      sum=0
      do 10 i=1,10
         call sub1(d,e,i)
         c(i) = ((0-a(i))*d)*((0-b(i))*e)
         sum = sum + c(i)
 10   continue
      if (sum .eq. 1822500) then
         write (6,*) 'OK'
      else
         write (6,*) 'NG'
      endif
      end

      subroutine sub1(pd,pe,i)
      common /init1/sa,sb
      integer*4 sa(10),sb(10)
      integer*4 pd,pe;
      integer*4 i;
      pd = sb(i)-sa(i)
      pe = sb(i)/sa(i)
      return
      end

      block data
      common /init1/ia,ib
      integer*4 ia(10),ib(10)
      data (ia(i),i=1,10) /1,2,3,4,5,6,7,8,9,10/
      data (ib(i),i=1,10) /10,20,30,40,50,60,70,80,90,10/
      end
