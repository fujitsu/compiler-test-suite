      program main
      real*8  a(20,20,20),b(20,20,20),c(20,20,20),x
      data  a,b,c/8000*1.d0,8000*2.d0,8000*3.d0/,n/20/,x/1.d0/

      call  sub(a,b,c,n,x)

      a(1,1,1) = a(1,1,1)*x
      b(1,1,1) = b(1,1,1)-x

      write(6,99) ' a= ',(((a(i,j,k),i=1,5),j=1,2),k=1,2)
      write(6,99) ' b= ',(((b(i,j,k),i=1,5),j=1,5),k=1,5)
  99  format(a,(5D14.6))
      stop
      end
      subroutine sub(a,b,c,n,x)
      real*8  a(n,n,n),b(n,n,n),c(n,n,n),x

      do 10 i=1,n
       do 10 j=1,n
        do 10 k=1,n,2
          a(i,j,k) = a(i,j,k)+dsqrt(b(i,j,k))
          b(i,j,k) = a(i,j,1)-x*c(i,j,k)
  10  continue

      return
      end
