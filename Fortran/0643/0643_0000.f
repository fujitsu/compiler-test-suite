
      call test(0.0d0) 
      call test(1.0d0) 
      call test(1.1d0) 
      call test(1.5d0) 
      call test(1.9d0) 
      call test(2.0d0) 
      call test(2.4d0) 
      call test(2.5d0) 
      call test(2.6d0) 
      call test(3.0d0) 

      call test(2.0d0**30+1.0d0) 
      call test(2.0d0**31+1.0d0) 
      call test(2.0d0**32+1.0d0) 
      call test(2.0d0**30+1.5d0) 
      call test(2.0d0**31+1.5d0) 
      call test(2.0d0**32+1.5d0) 
      call test(2.0d0**30+0.5d0) 
      call test(2.0d0**31+0.5d0) 
      call test(2.0d0**32+0.5d0) 

      call test(2.0d0**50+1.0d0) 
      call test(2.0d0**51+1.0d0) 
      call test(2.0d0**52+1.0d0) 
      call test(2.0d0**53+1.0d0) 
      call test(2.0d0**54+1.0d0) 
      call test(2.0d0**50+1.5d0) 
      call test(2.0d0**51+1.5d0) 
      call test(2.0d0**52+1.5d0) 
      call test(2.0d0**53+1.5d0) 
      call test(2.0d0**54+1.5d0) 
      call test(2.0d0**50+0.5d0) 
      call test(2.0d0**51+0.5d0) 
      call test(2.0d0**52+0.5d0) 
      call test(2.0d0**53+0.5d0) 
      call test(2.0d0**54+0.5d0) 
      call test(2.0d0**50+1.1d0) 
      call test(2.0d0**51+1.1d0) 
      call test(2.0d0**52+1.1d0) 
      call test(2.0d0**53+1.1d0) 
      call test(2.0d0**54+1.1d0) 
      call test(2.0d0**50+0.1d0) 
      call test(2.0d0**51+0.1d0) 
      call test(2.0d0**52+0.1d0) 
      call test(2.0d0**53+0.1d0) 
      call test(2.0d0**54+0.1d0) 
      call test(2.0d0**50+1.7d0) 
      call test(2.0d0**51+1.7d0) 
      call test(2.0d0**52+1.7d0) 
      call test(2.0d0**53+1.7d0) 
      call test(2.0d0**54+1.7d0) 
      call test(2.0d0**50+0.7d0) 
      call test(2.0d0**51+0.7d0) 
      call test(2.0d0**52+0.7d0) 
      call test(2.0d0**53+0.7d0) 
      call test(2.0d0**54+0.7d0) 

      call test(-1.0d0) 
      call test(-1.1d0) 
      call test(-1.5d0) 
      call test(-1.9d0) 
      call test(-2.0d0) 
      call test(-2.4d0) 
      call test(-2.5d0) 
      call test(-2.6d0) 
      call test(-3.0d0) 

      call test(2.0d0**30+1.0d0) 
      call test(2.0d0**31+1.0d0) 
      call test(2.0d0**32+1.0d0) 
      call test(2.0d0**30+1.5d0) 
      call test(2.0d0**31+1.5d0) 
      call test(2.0d0**32+1.5d0) 
      call test(2.0d0**30+0.5d0) 
      call test(2.0d0**31+0.5d0) 
      call test(2.0d0**32+0.5d0) 

      call test(-2.0d0**50-1.0d0) 
      call test(-2.0d0**51-1.0d0) 
      call test(-2.0d0**52-1.0d0) 
      call test(-2.0d0**53-1.0d0) 
      call test(-2.0d0**54-1.0d0) 
      call test(-2.0d0**50-1.5d0) 
      call test(-2.0d0**51-1.5d0) 
      call test(-2.0d0**52-1.5d0) 
      call test(-2.0d0**53-1.5d0) 
      call test(-2.0d0**54-1.5d0) 
      call test(-2.0d0**50-0.5d0) 
      call test(-2.0d0**51-0.5d0) 
      call test(-2.0d0**52-0.5d0) 
      call test(-2.0d0**53-0.5d0) 
      call test(-2.0d0**54-0.5d0) 
      call test(-2.0d0**50+1.1d0) 
      call test(-2.0d0**51+1.1d0) 
      call test(-2.0d0**52+1.1d0) 
      call test(-2.0d0**53+1.1d0) 
      call test(-2.0d0**54+1.1d0) 
      call test(-2.0d0**50+0.1d0) 
      call test(-2.0d0**51+0.1d0) 
      call test(-2.0d0**52+0.1d0) 
      call test(-2.0d0**53+0.1d0) 
      call test(-2.0d0**54+0.1d0) 
      call test(-2.0d0**50+1.7d0) 
      call test(-2.0d0**51+1.7d0) 
      call test(-2.0d0**52+1.7d0) 
      call test(-2.0d0**53+1.7d0) 
      call test(-2.0d0**54+1.7d0) 
      call test(-2.0d0**50+0.7d0) 
      call test(-2.0d0**51+0.7d0) 
      call test(-2.0d0**52+0.7d0) 
      call test(-2.0d0**53+0.7d0) 
      call test(-2.0d0**54+0.7d0) 
      print *,'PASS'
      end

      function dnint_1(x)
      real*8 dnint_1,x,const,tmp
      parameter(const=1.5d0*2.0d0**52)
      if(dabs(x).le.2.0d0**51) then
        tmp=(x-const)+const
        if(dabs(x-tmp).ne.0.5) then
          dnint_1=tmp
        else
          dnint_1=dnint(x)
        end if
      else
        dnint_1=dnint(x)
      end if
      end

      function dnint_2(x)
      real*8 dnint_2,x,const,tmp
      if(dabs(x).le.2.0d0**31) then
        n=INT(x+dsign(0.5d0,x))
        dnint_2=n
      else
        dnint_2=dnint(x)
      end if
      end

      function dnint_3(x)
      real*8 dnint_3,x,const,tmp
      integer*8 nn
      if(dabs(x).lt.2.0d0**52) then
        nn=x+dsign(0.5d0,x)
        dnint_3=nn
      else
        dnint_3=x
      end if
      end

      subroutine test(x)
      real*8 x,y1,y2,y3,dnint_1,dnint_2,dnint_3,const
      parameter(const=1.5d0*2.0d0**52)
      y1=dnint(x)
      y3=dnint_1(x)
      if(y1.ne.y3) then
         y2=(x-const)+const
         write(6,*) 'NG(1) : ',x,y1,y2,y3
      else

      end if
      y3=dnint_2(x)
      if(y1.ne.y3) then
         y2=(x-const)+const
         write(6,*) 'NG(2) : ',x,y1,y2,y3
      else

      end if
      y3=dnint_3(x)
      if(y1.ne.y3) then
         y2=(x-const)+const
         write(6,*) 'NG(3) : ',x,y1,y2,y3
      else

      end if
      end
