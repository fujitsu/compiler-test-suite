      program main

      parameter(n=1000)
      complex*16 c2as(n,n),c2bs(n,n),c2cs(n,n),c1as(n)
      common /com/ c2as,c2bs,c2cs,c1as

      call init
      call print(0)
      call sub1
      call print(1)
      call sub2
      call print(2)
      call sub3
      call print(3)
      call sub4
      call print(4)

      stop
      end program main

      subroutine init
      parameter(n=1000)
      complex*16 c2as(n,n),c2bs(n,n),c2cs(n,n),c1as(n)
      common /com/ c2as,c2bs,c2cs,c1as
      integer i,j

      do 10 j=1,n
         do 20 i=1,n
            c2as(i,j)=dcmplx(sin(dble(i)),log(dble(i*j)))
            c2bs(i,j)=dcmplx(cos(dble(i)),log(dble(j)))
            c2cs(i,j)=dcmplx(sin(dble(i)),log(dble(i)))
   20    continue
   10 continue
      do 30 i=1,n
         c1as(i)=0.0
   30 continue
      return
      end subroutine init

      subroutine print(step)
      parameter(n=1000)
      complex*16 c2as(n,n),c2bs(n,n),c2cs(n,n),c1as(n)
      common /com/ c2as,c2bs,c2cs,c1as
      integer step

      write (6,*) '--- step( ',step,')---'
      write (6,*) '<<< c2as >>>'
      write (6,100) (-c2as(i,i),i=1,n)
      write (6,*) '<<< c2bs >>>'
      write (6,100) (-c2bs(i,i),i=1,n)
      write (6,*) '<<< c2cs >>>'
      write (6,100) (-c2cs(i,i),i=1,n)
      write (6,*)
  100 format ((' ',6g20.12))
      return
      end subroutine print

      subroutine sub1
      parameter(n=1000)
      complex*16 c2as(n,n),c2bs(n,n),c2cs(n,n),c1as(n)
      common /com/ c2as,c2bs,c2cs,c1as
      integer zero,one

      zero=int(sin(0.0))
      one=int(cos(0.0))

      do 10 i=1,one
           c2as(i,i)=c2bs(i,i)*c1as(i)
           c2cs(i,i)=c2bs(i,i)+c1as(i)
   10 continue

      do 20 i=1,one
           c2as(i,n)=c2bs(i,n)*c1as(i)
           c2cs(i,n)=c2bs(i,n)+c1as(i)
   20 continue

      do 30 i=1,one
           c2as(n,i)=c2bs(n,i)*c1as(n)
           c2cs(n,i)=c2bs(n,i)+c1as(n)
   30 continue

      return
      end subroutine sub1

      subroutine sub2
      parameter(n=1000)
      complex*16 c2as(n,n),c2bs(n,n),c2cs(n,n),c1as(n)
      common /com/ c2as,c2bs,c2cs,c1as
      integer zero,one

      zero=int(sin(0.0))
      one=int(cos(0.0))

      do 10 i=1,one
           c2as(i*zero+1,i)=c2bs(i,i)*c1as(i)
           c2cs(i*zero+2,i)=c2bs(i,i)+c1as(i)
   10 continue

      do 20 i=1,one
           c2as(i*zero+one,n*zero+one)=c2bs(i,n)*c1as(i)
           c2cs(i*zero+one,n*zero+one)=c2bs(i,n)+c1as(i)
   20 continue

      do 30 i=1,one
           c2as(n,i*zero+n)=c2bs(n,i*zero+1)*c1as(n)
           c2cs(n,i*zero+n)=c2bs(n,i*zero+1)+c1as(n)
   30 continue

      do 40 i=1,one
           c2bs(n,i*zero+n)=c2as(n,i*zero+1)*c1as(i*zero+n)
           c2bs(n,i*zero+n)=c2cs(n,i*zero+1)+c1as(i*zero+1)
   40 continue

      return
      end subroutine sub2

      subroutine sub3
      parameter(n=1000)
      complex*16 c2as(n,n),c2bs(n,n),c2cs(n,n),c1as(n)
      common /com/ c2as,c2bs,c2cs,c1as
      integer zero,one

      zero=int(sin(0.0))
      one=int(cos(0.0))

      do 10 i=1,one
      do 10 j=1,one
           c2as(j,i)=c2bs(j,i)*cmplx(imag(c1as(i)),real(c1as(i)))
           c2cs(j,i)=c2bs(j,i)+cmplx(imag(c1as(j)),real(c1as(j)))
   10 continue

      do 20 i=1,one
      do 20 j=1,one
           c2as(i,j)=abs(c2bs(i,j))*c1as(i)
           c2cs(i,j)=abs(c2bs(i,j))+c1as(i)
   20 continue

      do 30 i=1,one
      do 30 j=1,one
           c2as(j*zero+2,i)=c2bs(n,i)*c1as(n)
           c2cs(j*zero+2,i)=c2bs(n,i)+c1as(n)
   30 continue

      return
      end subroutine sub3

      subroutine sub4
      parameter(n=1000)
      complex*16 c2as(n,n),c2bs(n,n),c2cs(n,n),c1as(n)
      common /com/ c2as,c2bs,c2cs,c1as
      integer zero,one

      zero=int(sin(0.0))
      one=int(cos(0.0))

      do 10 i=1,n,one*5
      do 10 j=1,n,one+9
           c2as(j,i)=c2bs(j,i)*cmplx(imag(c1as(i)),real(c1as(i)))
           c2cs(j,i)=c2bs(j,i)+cmplx(imag(c1as(j)),real(c1as(j)))
           c2as(i,j)=abs(c2bs(i,j))*c1as(i)
           c2cs(i,j)=abs(c2bs(i,j))+c1as(i)
           c2as(j*zero+2,i)=c2bs(n,i)*c1as(n)
           c2cs(j*zero+2,i)=c2bs(n,i)+c1as(n)
   10 continue

      do 20 i=1,n,cos(0.0)*10
      do 20 j=one+one,n,2
           if (mod(j,3).eq.2) then
           c2as(j,i)=c2bs(j,i)*cmplx(imag(c1as(i)),real(c1as(i)))
           if (abs(c2cs(j,i)).gt.3.0) then
           c2cs(j,i)=c2bs(j,i)+cmplx(imag(c1as(j)),real(c1as(j)))
           c2as(i,j)=abs(c2bs(i,j))*c1as(i)
           if (abs(c2bs(i,j)).gt.0.0) then
           c2cs(i,j)=abs(c2bs(i,j))+c1as(i)
           endif
           c2as(j*zero+2,i)=c2bs(n,i)*c1as(n)
           endif
           endif
           c2cs(j*zero+2,i)=c2bs(n,i)+c1as(n)
   20 continue

      return
      end subroutine sub4
