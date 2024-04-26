      real*4  a(50),b(50),c(50)
      data  a,b,c/50*1.,50*2.,50*3./,n/50/
      call  sub1(a,b,c,n)
      call  sub2(a,b,c,n)
      call  sub3(a,b,c,n)
      call  sub4(a,b,c,n)
      call  sub5(a,b,c,n)
      write(6,*) ' a=',a
      write(6,*) ' b=',b
      write(6,*) ' c=',c
      stop
      end
      subroutine sub1(a,b,c,n)
      dimension a(n),b(n),c(n)
      nx=n-5
      do 10 i=2,nx
        a(i)=b(i)+c(i)
        b(i)=a(3)*c(i)
  10  continue
      j=1
      do 20 k=2,nx
         b(j)=b(j)*a(k)-c(k)
         c(k)=c(k)-float(k)
  20  continue
      return
      end
      subroutine sub2(a,b,c,n)
      dimension a(n),b(n),c(n)
      nx=n/2+1
      rx = a(1)
      ry =1.
      do 10 i=1,nx
        b(i)=b(i)-rx
        rx = min1(a(i),b(i))
        ry = ry+abs(c(i))
  10  continue
      c(nx)=ry
      c(n)=rx
      return
      end
      subroutine sub3(a,b,c,n)
      dimension a(n),b(n),c(n),l(50)
      nx=n-3
      do 10 i=1,50
        l(i)=i
 10   continue
      do 20 k=15,20
       do 20 j=2,l(k)
        c(j)=a(j*2)+c(j+1)
        a(j)=b(k)-a(j+1)
  20  continue
      return
      end
      subroutine sub4(a,b,c,n)
      dimension a(n),b(n),c(n),l(50)
      nx=n-3
      do 10 i=1,50
  10    l(i)=i
      do 20 j=1,nx
        b(j)=b(j+1)-c(j)
  20    c(l(j))=c(l(j))+a(j)
      return
      end
      subroutine sub5(a,b,c,n)
      dimension a(n),b(n),c(n),l(50)
      nx=n-3
      do 10 i=1,50
  10    l(i)=i
      do 20 j=2,nx
       n1=l(j)
       n2=51-l(j)
       b(n1)=c(n2)+a(j)
       c(n2)=b(n1-1)-a(j)
  20  continue
      return
      end
