      real*4  b(20),c(20)
      data  b,c/20*1.,20*5./,n/20/

      call  jnd238(b,c,n)

      write(6,*) ' c=',c
      stop
      end

      subroutine jnd238(b,c,n)
      dimension b(n),c(n),l(20)
      data l/1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20/

      do 20 j=2,n-3
       n1=l(j)
       b(n1)=3
       c(2)=b(n1-1)
  20  continue
      return
      end
