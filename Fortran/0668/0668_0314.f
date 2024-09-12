      program main
      real*8      a(4,4,4,4,4,4,4),b(4,4,4,4,4,4,4)
      real*8      c(16,16),d(16)
      complex*16  w(4,4,4,4,4,4,4),x(4,4,4,4,4,4,4)
      complex*16  y(16,16),z(16)
      common /com/a,b,c,d,w,x
      common y,z
      do 10 i1=1,4
      do 10 i2=1,4
      do 10 i3=1,4
      do 10 i4=1,4
      do 10 i5=1,4
      do 10 i6=1,4
      do 10 i7=1,4
          a(i1,i2,i3,i4,i5,i6,i7)=0.0
          b(i1,i2,i3,i4,i5,i6,i7)=1.0
          w(i1,i2,i3,i4,i5,i6,i7)=(2.0,1.0)
          x(i1,i2,i3,i4,i5,i6,i7)=(3.0,1.0)
   10   continue
      do 20 i1=1,16
          d(i1)=1.0
          z(i1)=(3.0,3.0)
        do 20 i2=1,16
          c(i1,i2)=0.0
          y(i1,i2)=(2.0,2.0)
   20   continue
      call sub1
      call sub2(4,16)
      call sub3(1)
      stop
      end
      subroutine sub1
      real*8      a(4,4,4,4,4,4,4),b(4,4,4,4,4,4,4)
      real*8      c(16,16),d(16),s
      complex*16  w(4,4,4,4,4,4,4),x(4,4,4,4,4,4,4)
      complex*16  y(16,16),z(16),t
      common /com/a,b,c,d,w,x
      common y,z
      do 10 i7=1,4
      do 10 i6=1,4
      do 10 i5=1,4
      do 10 i4=1,4
      do 10 i3=1,4
       b(1,1,i3,i4,i5,i6,i7)=a(1,2,i3,i4,i5,i6,i7)+1.0
      do 10 i2=1,4
      do 10 i1=1,4
       a(i1,i2,i3,i4,i5,i6,i7)=b(i1,i2,i3,i4,i5,i6,i7)-2.0
   10 continue
      do 30 j=1,16
        do 20 i=1,16
          z(i)=y(i,j)+dble(c(i,j)-d(i))
   20   continue
   30 continue
      s=a(4,4,4,4,4,4,4)
      t=z(16)
      write(6,*) ' ** com-array test no.1 ** '
      write(6,*) 'a:all(-1.0)'
      write(6,*) 'a=',s
      write(6,*) 'z:all(1.0,2.0)'
      write(6,*) 'z=',t
      return
      end
      subroutine sub2(n,m)
      real*8      a(4,4,4,4,4,4,4),b(4,4,4,4,4,4,4)
      real*8      c(16,16),d(16)
      complex*16  w(4,4,4,4,4,4,4),x(4,4,4,4,4,4,4)
      complex*16  y(16,16),z(16)
      logical la(16,16)/256*.false./
      common /com/a,b,c,d,w,x
      common y,z
      real*8     s,t,u

      a(n,n,n,n,n,n,n)=9999.0
      s = b(1,1,1,1,1,1,1)
      do 10 i1=1,n
      do 10 i2=1,n
      do 10 i3=1,n
      do 10 i4=1,n
      do 10 i5=1,n
      do 10 i6=1,n
      do 10 i7=1,n
       s = dmax1(s,a(i1,i2,i3,i4,i5,i6,i7))
   10 continue
      write(6,*) ' ** com-array test no.2 ** '
      write(6,*) s
      y(m,m)=(-9999.0,-9999.0)
      t = dble(c(1,1))
      k=0
      do 30 i=1,m
       do 20 j=1,m
       u = dmin1(t,dreal(y(i,j)))
       if(u.eq.2) la(i,j)=.true.
   20 continue
      if(la(i,m)) then
      k=i
      goto 99
      end if
   30 continue
   99 continue
      write(6,*) ' ** com-array test no.3 ** '
      write(6,*) u
      write(6,*) k
      return
      end
      subroutine sub3(n)
      real*8      a(4,4,4,4,4,4,4),b(4,4,4,4,4,4,4)
      real*8      c(16,16),d(16),s
      complex*16  w(4,4,4,4,4,4,4),x(4,4,4,4,4,4,4)
      complex*16  y(16,16),z(16),t
      common /com/a,b,c,d,w,x
      common y,z
      do 10 i1=1,n
      do 10 i2=1,4
      do 10 i3=1,n
      do 10 i4=1,4
      do 10 i5=1,4
      do 10 i6=1,n
      do 10 i7=1,4
       s = b(i1,i2,i3,i4,i5,i6,i7)**3.0
       t = x(i1,i2,i3,i4,i5,i6,i7)**3
   10 continue
      write(6,*) ' ** com-array test no.4 ** '
      write(6,*) s
      write(6,*) t
      do 20 i2=1,n
      do 20 i1=1,n
       c(i1,i2) = d(i1)**z(i1)
       y(i1,i2) = 3.0**d(i1)
   20 continue
      write(6,*) ' ** com-array test no.5 ** '
      write(6,*) c(1,1)*1.0
      write(6,*) y(1,1)
      return
      end
