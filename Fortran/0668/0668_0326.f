      program main
      real*8  as(5,5,5,5,5,5,5)
      real*8  bs(10,1,1,1,10,1,10)
      real*8  cs(1,1,1,1,1,1,1)
      common /com/ as,bs,cs
      call sub
      call sub1(as,bs,cs)
      call sub2(as,bs,cs)
      call sub3(as,bs,cs)
      call sub4(as,bs,cs)
      call sub5(as,bs,cs)
      call sub6(as,bs,cs)
      write(6,*) (as(i,i,i,i,i,i,i)*1.0,i=1,5)
      write(6,*) (bs(1,1,1,1,1,1,i)*1.0,i=1,5)
      write(6,*)  cs(1,1,1,1,1,1,1)*1.0
      end
      subroutine sub
      real*8  as(5,5,5,5,5,5,5)
      real*8  bs(10,1,1,1,10,1,10)
      real*8  cs(1,1,1,1,1,1,1)
      common /com/ as,bs,cs
      do 10 i1=1,5
      do 10 i2=1,5
      do 10 i3=1,5
      do 10 i4=1,5
      do 10 i5=1,5
      do 10 i6=1,5
      do 10 i7=1,5
        as(i7,i6,i5,i4,i3,i2,i1)=1.0
   10 continue
      do 20 i1=1,10
      do 20 i5=1,10
      do 20 i7=1,10
        bs(i7,1,1,1,i5,1,i1)=2.0
   20 continue
        cs(1,1,1,1,1,1,1)=2.0
      end
      subroutine sub1(as,bs,cs)
      integer n
      real*8  as(5,5,5,5,5,5,5)
      real*8  bs(10,1,1,1,10,1,10)
      real*8  cs(1,1,1,1,1,1,1)
      real*8  a(5,5,5,5,5,5,5)
      real*8  b(10,1,1,1,10,1,10)
      n=0
      x=as(1,2,3,4,5,5,5)
      y=bs(10,1,1,1,5,1,5)
      do 10 i1=1,n
      do 10 i2=1,n
      do 10 i3=1,n
      do 10 i4=1,n
      do 10 i5=1,n
      do 10 i6=1,n
      do 10 i7=1,n
        a(i1,i2,i3,1,5,i6,i7)=as(i1,i2,i3,1,5,i6,i7)
        b(i1,1,1,1,5,1,i7)=bs(i2,1,1,1,5,1,i6)+
     &                         cs(1,1,1,1,1,1,1)
        as(i1,i2,i3,i4,i5,i6,i7)= a(i1,i2,i3,1,5,i6,i7)*
     &                            b(i1,i2,i3,1,5,i6,i7)
   10 continue
      end
      subroutine sub2(as,bs,cs)
      integer n1/1/,n2/2/,n3/3/
      real*8  as(5,5,5,5,5,5,5)
      real*8  bs(10,1,1,1,10,1,10)
      real*8  cs(1,1,1,1,1,1,1)
      real*8  a(5,5,5,5,5,5,5)
      real*8  b(10,1,1,1,10,1,10)
      x=as(1,2,3,4,5,5,5)
      y=bs(10,1,1,1,5,1,5)
      do 10 i7=1,5
      do 10 i6=1,1
      do 10 i5=1,2
      do 10 i4=1,1
      do 10 i3=1,n3
      do 10 i2=1,n2
      do 10 i1=1,n1
        if(i3.gt.2) then
          a(i1,i2,i3,1,5,i6,i7)=as(i1,i2,i3,1,5,i6,i7)
          b(i1,1,1,1,10,i6,i7)=dble(sqrt(bs(i2,1,1,1,10,1,i6))+
     &                                sqrt(cs(1,1,1,1,1,1,1)) )
        endif
        if(i3.le.2) then
          a(i1,i2,i3,1,5,i6,i7)=as(i1,i2,i3,1,5,i6,i7)
          b(i1,1,1,1,10,i6,i7)=dble(sqrt(bs(i2,1,1,1,10,1,i6))+
     &                                sqrt(cs(1,1,1,1,1,1,1)) )
        endif
         as(n1,n2,n3,1,1,1,1)= a(i1,i2,i3,1,5,i6,i7)*
     &                            b(i1,1,1,1,10,i6,i7)
   10 continue
      end
      subroutine sub3(as,bs,cs)
      real*8  as(5,5,5,5,5,5,5)
      real*8  bs(10,1,1,1,10,1,10)
      real*8  cs(1,1,1,1,1,1,1)
      real*8  a(5,5,5,5,5,5,5)
      real*8  b(10,1,1,1,10,1,10)
      x=as(1,2,3,4,5,5,5)
      y=bs(10,1,1,1,5,1,5)
      do 10 i7=1,5
      do 10 i6=1,1
      do 10 i5=1,2
      do 10 i4=1,1
      do 10 i3=1,1
      do 10 i2=1,1
      do 10 i1=1,5
        if(i7*2.gt.i2*2) then
          a(i1,i2,i3,1,5,i6,i7)=as(i1,i2,i3,1,5,i6,i7)+y
          b(i1,1,1,1,10,1,i7)=dble(sqrt(bs(i2,1,1,1,10,1,i6))+
     &                                sqrt(cs(1,1,1,1,1,1,1)) )
        endif
        if(i7*2.le.i2*2) then
          a(i1,i2,i3,1,5,i6,i7)=as(i1,i2,i3,1,5,i6,i7)+y
          b(i1,1,1,1,10,1,i7)=dble(sqrt(bs(i2,1,1,1,10,1,i6))+
     &                                sqrt(cs(1,1,1,1,1,1,1)) )
        endif
        if(x.gt.y) then
          a(i1,i2,i3,1,5,i6,i7)=as(i1,i2,i3,1,5,i6,i7)
        else
          b(i1,1,1,1,10,1,i7)=dble(sqrt(bs(i2,1,1,1,10,1,i6))/
     &                                sqrt(cs(1,1,1,1,1,1,1)) )
        endif
        if(x.le.y) then
          a(i1,i2,i3,1,5,i6,i7)=as(i1,i2,i3,1,5,i6,i7)
        else
          b(i1,1,1,1,10,1,i7)=dble(sqrt(bs(i2,1,1,1,10,1,i6))/
     &                                sqrt(cs(1,1,1,1,1,1,1)) )
        endif
        bs(1,1,1,1,1,1,1)= a(i1,i2,i3,1,5,i6,i7)*
     &                            b(i1,1,1,1,10,1,i7)
   10 continue
      end
      subroutine sub4(as,bs,cs)
      real*8  as(5,5,5,5,5,5,5)
      real*8  bs(10,1,1,1,10,1,10)
      real*8  cs(1,1,1,1,1,1,1)
      real*8  a(5,5,5,5,5,5,5)
      real*8  b(10,1,1,1,10,1,10)
      x=as(1,2,3,4,5,5,5)
      y=bs(10,1,1,1,5,1,5)
      j=0
      do 10 i7=1,5
      do 10 i6=1,1
      do 10 i5=1,2
      do 10 i4=1,1
      do 10 i3=1,1
      do 10 i2=1,1
      do 10 i1=1,5
        if(j.gt.5) then
          a(i1,i1,i1,1,i1,i1,i1)=as(1,2,3,4,5,5,5)
          b(i1,1,1,1,10,1,i7)=dble(sqrt(bs(i2,1,1,1,10,1,i6))*
     &                                sqrt(cs(1,1,1,1,1,1,1)) *x)
        cs(1,1,1,1,1,1,1)= a(i1,i1,i1,1,i1,i1,i1)*
     &                            b(i1,1,1,1,10,1,i7)
        endif
        j=j+1
   10 continue
      end
      subroutine sub5(as,bs,cs)
      real*8  as(5,5,5,5,5,5,5)
      real*8  bs(10,1,1,1,10,1,10)
      real*8  cs(1,1,1,1,1,1,1)
      real*8  a(5,5,5,5,5,5,5)
      real*8  b(10,1,1,1,10,1,10)
      x=as(1,2,3,4,5,5,5)
      y=bs(10,1,1,1,5,1,5)
      j=0
      do 10 i6=1,1
      do 10 i5=1,2
      do 10 i4=1,1
      do 10 i3=1,1
      do 10 i2=1,1
      do 10 i1=1,5
        if(j.gt.5) then
        if(mod(i1*i2*i3,i4*i5*i6).gt.0) then
          a(i1,i1,i1,1,i1,i1,i1)=as(1,2,3,4,5,5,5)
          b(i1,1,1,1,10,1,1)=dble(sqrt(bs(i2,1,1,1,10,1,i6))*
     &                                sqrt(cs(1,1,1,1,1,1,1)) )
        as(i1,i1,i1,i1,i1,i1,i1)= a(i1,i1,i1,1,i1,i1,i1)*
     &                            b(i1,1,1,1,10,1,1)
        endif
        endif
        j=j+1
   10 continue
      end
      subroutine sub6(as,bs,cs)
      integer m1/1/,m2/1/,m3/1/
      real*8  as(5,5,5,5,5,5,5)
      real*8  bs(10,1,1,1,10,1,10)
      real*8  cs(1,1,1,1,1,1,1)
      real*8  a(5,5,5,5,5,5,5)
      real*8  b(10,1,1,1,10,1,10)
      x=as(1,2,3,4,5,5,5)
      y=bs(10,1,1,1,5,1,5)
      j=0
      do 10 i6=1,1
      do 10 i5=1,2
      do 10 i4=1,1
      do 10 i3=1,1
      do 10 i2=1,1
      do 10 i1=1,5
        if(m1.eq.1) then
        if(m2.eq.1) then
        if(m3.eq.1) then
          a(i1,i2,i3,1,5,i6,1)=x*y
          b(i1,1,1,1,10,1,i6)=dble(sqrt(bs(i2,1,1,1,10,1,i6))*
     &                                sqrt(cs(1,1,1,1,1,1,1)) )
        as(i1,i1,i1,i1,i1,i1,i1)= a(i1,i2,i3,1,5,i6,1)*
     &                            b(i1,1,1,1,10,1,1)
        endif
        endif
        endif
        j=j+1
   10 continue
      end
