      real*4  a(50),b(50),c(50)
      data  a,b,c/50*1.,50*2.,50*3./,n/50/
      call  sub(a,b,c,n)
      write(6,*) ' a=',a
      write(6,*) ' b=',b
      write(6,*) ' c=',c
      stop
      end
      subroutine sub(a,b,c,n)
      dimension a(n),b(n),c(n)
      data  n1,n2,n3/1,2,3/
      nx=n/2
      do 10 i=2,nx
        nn1=i+n1+n2-1
        nn2=i+n3-n1+1
        a(nn1)=b(nn2)+c(i)
        b(nn2)=a(nn2)*c(i)
  10  continue
      j=1
      do 20 k=2,nx
        nn1=i+n1
        nn2=n1+n2
        b(nn2)=b(nn2)*a(k)-c(nn2)
        c(nn1)=c(k)-float(k)
  20  continue
      return
      end
