      program main
      implicit real*8(a-h,o-z)
      common /com/n0,n1,n2,n512
      common /com/a1(2),b1(512,2),a2(2),b2(512,2)
      common /msu/x1(2),y1(512,2),x2(2),y2(512,2)
      common /scl/r1,r2
      common /msk/mask1,mask2
      logical mask1(512),mask2(512)
      call sub0(a1,a2,b1,b2,2,512)
      call sub1(a1,a2,b1,b2,2,512)
      call sub2(a1,a2,b1,b2,2,512)
      call sub3(a1,a2,b1,b2,2,512)
      call sub4(a1,a2,b1,b2,2,512)
      stop
      end
      subroutine sub0(a1,a2,b1,b2,l2,l512)
      implicit real*8(a-h,o-z)
      dimension a1(2),b1(512,2),a2(2),b2(512,2)
      common /com/n0,n1,n2,n512
      common /msu/x1(2),y1(512,2),x2(2),y2(512,2)
      common /scl/r1,r2
      common /msk/mask1,mask2
      logical mask1(512),mask2(512)
      dimension prt01(2),prt02(2),prt1(512,2),prt2(512,2)
      data prt01,prt02/2*0,2*0/
      call init(a1,a2,b1,b2,2,512)
      do 100 j=1,n512
      do 100 i=1,n1
      a1(i)=a1(i)*b1(j,i)-x1(i)/a2(i)
      b2(j,i)=a1(i)/b1(j,i)+x1(i)/a2(i)
      a2(i)=a2(i)*b2(j,i)-x2(i)/a1(i)
      b1(j,i)=a1(i)/b2(j,i)+x2(i)/a1(i)
100   continue
      do 101 j=1,n512
      do 101 i=1,n1
      prt01(i)=a1(i)
      prt2(j,i)=b2(j,i)
      prt02(i)=a2(i)
      prt1(j,i)=b1(j,i)
101   continue
      print *,' item1'
      print *,prt01,prt02
      print *,(prt1(i,1),i=1,512),(prt2(i,1),i=1,512)
      call init(a1,a2,b1,b2,2,512)
      do 200 i=1,n0
      a1(i)=(a1(i)+r1*a1(i))+(a2(i)+r2*x2(i))
      b2(512,i)=(b2(512,i)+r2*b1(512,i))+(a2(i)+r1*x1(i))
200   continue
      do 201 i=1,n0
      prt01(i)=a1(i)
      prt2(512,i)=b2(512,i)
201   continue
      print *,' item2'
      print *,prt01
      print *,prt2(512,1)
      call init(a1,a2,b1,b2,2,512)
      do 300 j=256,n512
      do 300 i=1,n1
        if(mask1(i)) a1(i)=(a1(i)+r1*b1(j,i))-(a2(i)+r2*x2(i))
        if(mask2(j)) then
           b1(j,i)=b2(j,i)+a1(i)*a2(i)-b1(j,i)+r2*x1(i)
        endif
300   continue
      do 301 j=256,n512
      do 301 i=1,n1
        prt01(i)=a1(i)
        prt1(j,i)=b1(j,i)
301   continue
      print *,' item3'
      print *,prt01
      print *,(prt1(i,1),i=256,512)
      call init(a1,a2,b1,b2,2,512)
      do 400 i=1,n0
        if(mask1(i)) a1(i)=(a1(i)+r1*b1(512,i))+(a2(i)+r2*x2(i))
        if(mask2(j)) then
           b1(512,i)=b2(512,i)+a1(i)*a2(i)+b1(512,i)+r2*x1(i)
        endif
400   continue
      do 401 i=1,n0
        prt01(i)=a1(i)
        prt1(512,i)=b1(512,i)
401   continue
      print *,' item4'
      print *,prt01
      print *,prt1(512,1)
      return
      end
      subroutine sub1(a1,a2,b1,b2,l2,l512)
      implicit real*8(a-h,o-z)
      dimension a1(l2),b1(l512,l2),a2(l2),b2(l512,l2)
      common /com/n0,n1,n2,n512
      common /msu/x1(2),y1(512,2),x2(2),y2(512,2)
      common /scl/r1,r2
      common /msk/mask1,mask2
      logical mask1(512),mask2(512)
      dimension prt01(2),prt02(2),prt1(512,2),prt2(512,2)
      data prt01,prt02/2*0,2*0/
      call init(a1,a2,b1,b2,2,512)
      j=n512
      do 100 i=1,n1
      a1(i)=a1(i)*b1(j,i)+x1(i)*a2(i)
      b2(512,i)=a1(i)*b1(512,i)+x1(i)*a2(i)
100   continue
      do 101 i=1,n1
      prt01(i)=a1(i)
      prt2(512,i)=b2(512,i)
101   continue
      print *,' item11'
      print *,prt01
      print *,prt2(512,1)
      call init(a1,a2,b1,b2,2,512)
      do 200 j=256,n512
      do 200 i=1,n0
      a1(i)=(a1(i)+r1*a1(i))+(a2(i)+r2*x2(i))
      b2(j,i)=(b2(j,i)+r2*b1(j,i))+(a2(i)+r1*x1(i))
200   continue
      do 201 j=256,n512
      do 201 i=1,n0
      prt01(i)=a1(i)
      prt2(j,i)=b2(j,i)
201   continue
      print *,' item12'
      print *,(prt01(i),i=1,n0)
      print *,((prt2(j,i),i=1,n0),j=256,n512)
      call init(a1,a2,b1,b2,2,512)
      j=512
      do 300 i=1,n1
        if(mask1(i)) a1(i)=(a1(i)+r1*b1(j,i))+(a2(i)+r2*x2(i))
        if(mask2(j)) then
           b1(j,i)=b2(j,i)+a1(i)*a2(i)+b1(j,i)+r2*x1(i)
        endif
300   continue
      do 301 i=1,n1
        prt01(i)=a1(i)
        prt1(j,i)=b1(j,i)
301   continue
      print *,' item13'
      print *,prt01
      print *,prt1(512,1)
      call init(a1,a2,b1,b2,2,512)
      j=n512
      do 400 i=1,n0
        if(mask1(i)) a1(i)=(a1(i)+r1*b1(j,i))+(a2(i)+r2*x2(i))
        if(mask2(j)) then
           b2(j,i)=b2(j,i)+a1(i)*a2(i)+b1(j,i)+r2*x1(i)
        endif
400   continue
      do 401 i=1,n0
        prt01(i)=a1(i)
        prt2(j,i)=b2(j,i)
401   continue
      print *,' item14'
      print *,prt01
      print *,prt2(j,1)
      return
      end
      subroutine sub2(a1,a2,b1,b2,l2,l512)
      implicit real*8(a-h,o-z)
      dimension a1(l2),b1(l512,l2),a2(l2),b2(l512,l2)
      common /com/n0,n1,n2,n512
      common /msu/x1(2),y1(512,2),x2(2),y2(512,2)
      common /scl/r1,r2
      common /msk/mask1,mask2
      logical mask1(512),mask2(512)
      dimension prt01(2),prt02(2),prt1(512,2),prt2(512,2)
      data prt01,prt02/2*0,2*0/
      call init(a1,a2,b1,b2,2,512)
      j=n512
      do 100 i=1,n1
        a1(i)=a1(i)/b1(j,i)-x1(i)/a2(i)
        b2(j,i)=a1(i)*b1(j,i)-x1(i)*a2(i)
        x1(i)=(a1(i)+r1*a1(i))-(a2(i)+r2*x2(i))
        y2(j,i)=(b2(j,i)+r2*b1(j,i))-(a2(i)+r1*x1(i))
        if(mask1(i)) a1(i)=(a1(i)-r1*b1(j,i))-(a2(i)-r2*x2(i))
        if(mask2(j)) then
           b1(j,i)=b2(j,i)+a1(i)*a2(i)-b1(j,i)+r2/x1(i)
        else if(.not.mask1(i)) then
           a2(i)=(a1(i)+r1*b1(j,i))+(a2(i)+r2*x2(i))
        endif
        if(.not.mask2(j)) then
           b1(j,i)=b2(j,i)+a1(i)*a2(i)+b1(j,i)+r2*x1(i)
        endif
100   continue
      do 101 i=1,n1
        prt01(i)=a1(i)
        prt02(i)=a2(i)
        prt1(j,i)=b1(j,i)
        prt2(j,i)=b2(j,i)
101   continue
      print *,' item21'
      print *,prt01,prt02
      print *,prt1(j,1),prt2(j,1)
      print *,x1,y2(j,1)
      call init(a1,a2,b1,b2,2,512)
      j=n512
      do 200 i=1,n0
        a1(i)=a1(i)*b1(j,i)+x1(i)*a2(i)
        b2(j,i)=a1(i)*b1(j,i)+x1(i)*a2(i)
        x1(i)=(a2(i)+r1*a1(i))+(a2(i)+r2*x2(i))
        b1(j,i)=(b2(j,i)+r2*b1(j,i))+(a2(i)+r1*x1(i))
        if(mask1(i)) a1(i)=(a1(i)+r1*b1(j,i))+(a2(i)+r2*x2(i))
        if(mask2(j)) then
           y2(j,i)=b2(j,i)+a1(i)*a2(i)+b1(j,i)+r2*x1(i)
        else if(.not.mask1(i)) then
           x2(i)=(a1(i)+r1*b1(j,i))+(a2(i)+r2*x2(i))
        endif
        if(.not.mask2(j)) then
           y1(j,i)=b2(j,i)+a1(i)*a2(i)+b1(j,i)+r2*x1(i)
        endif
200   continue
      do 201 i=1,n0
        prt01(i)=a1(i)
        prt1(j,i)=b1(j,i)
        prt2(j,i)=b2(j,i)
201   continue
      print *,' item22'
      print *,prt01
      print *,prt1(j,1),prt2(j,1)
      print *,x1,x2,y1(j,1),y2(j,1)
      return
      end
      subroutine sub3(a1,a2,b1,b2,l2,l512)
      implicit real*8(a-h,o-z)
      dimension a1(l2),b1(l512,l2),a2(l2),b2(l512,l2)
      common /com/n0,n1,n2,n512
      common /msu/x1(2),y1(512,2),x2(2),y2(512,2)
      common /scl/r1,r2
      common /msk/mask1,mask2
      logical mask1(512),mask2(512)
      dimension prt01(2),prt02(2),prt1(512,2),prt2(512,2)
      data prt01,prt02/2*0,2*0/
      call init(a1,a2,b1,b2,2,512)
      j=n512
      do 100 i=1,n1
        a1(i)=a1(i)/b1(j,i)-x1(i)/a2(i)
        a2(i)=a2(i)/b2(j,i)-x2(i)/a2(i)
        b2(j,i)=a1(i)*b1(j,i)-x1(i)*a2(i)
        x1(i)=(a1(i)-r1*a1(i))+(a2(i)-r2*x2(i))
        y2(j,i)=(b2(j,i)+r2*b1(j,i))-(a2(i)+r1*x1(i))
        if(mask1(i)) a1(i)=(a1(i)-r1/b1(j,i))-(a2(i)-r2/x2(i))
        if(mask2(j)) then
           b1(j,i)=b2(j,i)+a1(i)*a2(i)-b1(j,i)+r2*x1(i)
        else if(.not.mask1(i)) then
           a2(i)=(a1(i)+r1*b1(j,i))-(a2(i)+r2*x2(i))
        endif
        if(.not.mask2(j)) then
           b1(j,i)=b2(j,i)+a1(i)*a2(i)-b1(j,i)+r2*x1(i)
        endif
100   continue
      do 101 i=1,n1
        prt01(i)=a1(i)
        prt02(i)=a2(i)
        prt1(j,i)=b1(j,i)
        prt2(j,i)=b2(j,i)
101   continue
      print *,' item31'
      print *,prt01,prt02
      print *,prt1(j,1),prt2(j,1)
      print *,x1,y2(j,1)
      call init(a1,a2,b1,b2,2,512)
      j=n512
      do 200 i=1,n0
        a1(i)=a1(i)*b1(j,i)+x1(i)*a2(i)
        b2(j,i)=a1(i)*b1(j,i)+x1(i)*a2(i)
        x1(i)=(b1(j,i)+r1*a1(i))+(a2(i)+r2*x2(i))
        b1(j,i)=(b2(j,i)+r2*b1(j,i))+(a2(i)+r1*x1(i))
        if(mask1(i)) a1(i)=(a1(i)+r1*b1(j,i))+(a2(i)+r2*x2(i))
        if(mask2(j)) then
           y2(j,i)=b2(j,i)+a1(i)*a2(i)+b1(j,i)+r2*x1(i)
        else if(.not.mask1(i)) then
           x2(i)=(a1(i)+r1*b1(j,i))+(a2(i)+r2*x2(i))
        endif
        if(.not.mask2(j)) then
           y1(j,i)=b2(j,i)+a1(i)*a2(i)+b1(j,i)+r2*x1(i)
        endif
200   continue
      do 201 i=1,n0
        prt01(i)=a1(i)
        prt2(j,i)=b2(j,i)
        prt1(j,i)=b1(j,i)
201   continue
      print *,' item32'
      print *,prt01
      print *,prt1(j,1),prt2(j,1)
      print *,x1,x2,y1(j,1),y2(j,1)
      return
      end
      subroutine sub4(a1,a2,b1,b2,l2,l512)
      implicit real*8(a-h,o-z)
      dimension a1(l2),b1(l512,l2),a2(l2),b2(l512,l2)
      common /com/n0,n1,n2,n512
      common /msu/x1(2),y1(512,2),x2(2),y2(512,2)
      common /scl/r1,r2
      common /msk/mask1,mask2
      logical mask1(512),mask2(512)
      dimension prt01(2),prt02(2),prt1(512,2),prt2(512,2)
      data prt01,prt02/2*0,2*0/
      call init(a1,a2,b1,b2,2,512)
      j=n512
      do 100 i=1,n2
      a1(i)=a1(i)*b1(j,i)+x1(i)*a2(i)
      b2(j,i)=a1(i)*b1(j,i)+x1(i)*a2(i)
100   continue
      do 101 i=1,n2
      prt01(i)=a1(i)
      prt2(j,i)=b2(j,i)
101   continue
      print *,' item41'
      print *,prt01
      print *,(prt2(j,i),i=1,2)
      call init(a1,a2,b1,b2,2,512)
      j=n512
      do 300 i=1,n2
        if(mask1(i)) a1(i)=(a1(i)+r1*b1(j,i))+(a2(i)+r2*x2(i))
        if(mask2(j)) then
           b1(j,i)=b2(j,i)+a1(i)*a2(i)+b1(j,i)+r2*x1(i)
        endif
300   continue
      do 301 i=1,n2
        prt01(i)=a1(i)
        prt1(j,i)=b1(j,i)
301   continue
      print *,' item42'
      print *,prt01
      print *,(prt1(j,i),i=1,2)
      return
      end
      blockdata
      implicit real*8(a-h,o-z)
      common /com/n0,n1,n2,n512
      data n0/0/,n1/1/,n2/2/,n512/512/
      common /scl/r1,r2
      data r1/0.001/,r2/0.001/
      end
      subroutine init(a1,a2,b1,b2,l2,l512)
      implicit real*8(a-h,o-z)
      dimension a1(l2),b1(l512,l2),a2(l2),b2(l512,l2)
      common /com/n0,n1,n2,n512
      common /msu/x1(2),y1(512,2),x2(2),y2(512,2)
      common /scl/r1,r2
      common /msk/mask1,mask2
      logical mask1(512),mask2(512)
      a1(1)=0.001
      a1(2)=0.011
      a2(1)=0.001
      a2(2)=0.0011
      x1(1)=0.001
      x1(2)=0.015
      x2(1)=0.001
      x2(2)=0.005
      do 10 j=1,2
      do 10 i=1,512
       b1(i,j)=i*0.0001
       b2(i,j)=(513-i)*0.2
       y1(i,j)=i*0.0001
       y2(i,j)=(513-i)*0.2
       if(mod(i,2).eq.1) then
         mask1(i)=.true.
         mask2(i)=.false.
       else
         mask1(i)=.false.
         mask2(i)=.true.
       endif
10    continue
      return
      end
