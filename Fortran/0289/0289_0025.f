      subroutine sub1(a,b,n)
       real*8 a(10),b(10)
       real*8 x(10,2)
       data   ((x(i,j),i=1,10),j=1,2)/10*1.,10*2./
       a(n)=x(n,1)
       b(n)=x(n,2)
       return
      end
      subroutine sub2(a,b)
       real*8 a(10),b(10)
       real*8 y(10,2)
       data   ((y(i,j),j=1,2),i=1,10)/2*1.,2*2.,2*3.,2*4.,2*5.
     1                               ,2*6.,2*7.,2*8.,2*9.,2*1e1/
       do 10 i=1,10
        a(i)=a(i)+y(i,1)
        b(i)=b(i)+y(i,2)
   10   continue
       return
      end
      subroutine sub3(a,b,n)
       real*8 a(10),b(10)
       real*8 x(10,2)
       data   ((x(i,j),i=1,10),j=1,2)/10*1.,10*2./
       a(n)=a(n)-x(n,1)
       b(n)=b(n)-x(n,2)
       return
      end
      subroutine sub4(a,b)
       real*8 a(10),b(10)
       real*8 y(10,2)
       data   ((y(i,j),j=1,2),i=1,10)/2*1.,2*2.,2*3.,2*4.,2*5.
     1                               ,2*6.,2*7.,2*8.,2*9.,2*1e1/
       do 10 i=1,10
        a(i)=a(i)-y(i,1)
        b(i)=b(i)-y(i,2)
   10   continue
       return
      end
      program main
      implicit real*8(a,b,x,y)
      real*8 a(10),b(10)
      data   (a(i),i=1,10)/1*9.,2*9.,3*9.,4*9./
      data   (b(i),i=1,10)/4*9.,3*9.,2*9.,1*9./
      logical lscmp
      lscmp(a,b)=a.ne.b .or. a.ne.0. .or. b.ne.0.
      do 10 i=1,10
       call sub1(a,b,i)
   10  continue
      call sub2(a,b)
      do 30 i=1,10
       call sub3(a,b,i)
   30  continue
      call sub4(a,b)
      do 50 i=1,10
       if (lscmp(a(i),b(i))) then
        print *,'*** ng ***'
        print *,'a=',a
        print *,'b=',b
        stop
        end if
   50  continue
      print *,'*** ok ***'
      stop
      end
