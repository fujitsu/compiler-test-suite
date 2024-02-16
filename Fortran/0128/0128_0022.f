      call sub(9)
      end

      subroutine sub(L)
      integer i,a,b,c,q
      integer sub1,sub2,sub3,L
      q=0
      do i=1,L
         q=q+1
         a = sub1(q)
         b = sub2(q)
         c = sub3(a+b)
      enddo
      if(c.ne.24)then
         print *,'ng'
      else
         print *,'ok'
      endif
      end

      integer function sub1(p)
      integer p
      sub1=p+1
      return
      end
      
      integer function sub2(p)
      integer p
      sub2=p+2
      return
      end

      integer function sub3(p)
      integer p
      sub3=p+3
      return
      end
