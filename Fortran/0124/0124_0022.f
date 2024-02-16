c 

      program main
      integer, volatile :: s
      integer, parameter :: N = 5
      real*8    a(N,N)
      complex*8 c1(N), c2(N,N)
      integer ok
      integer,parameter::ANS1=-75
      integer,parameter::ANS2=-4
      integer,parameter::ANS3=575
      integer,parameter::ANS =3

      call init_var()

c
      do i=1,N
         do j=1,N
            a(i,j) = a(i,j) + a(i,j) + 0.0
            a(i,j) = a(i,j) + 0.0 + a(i,j)
            a(i,j) = a(i,j) + a(i,j) - 1.0
            a(i,j) = a(i,j) - 1.0 + a(i,j)
         enddo
      enddo

c
      do i=1,N
         c1(i) = c1(i)
         do j=1,N
            c2(i,j) = c2(i,j)
         enddo
      enddo

c
      do i=1,N
         c1(i) = c1(i) * 2.0
         c1(i) = c1(i) / 2.0
      enddo

c
      c2 = c2 - 2.0
      do i=1,N
         do j=1,N
            c2 = c2 + 1.0
         enddo
      enddo

c
      do s=1,N/2
         do j=1,N/2
            c1(s*j) = c1(s*j) - 1.0
         enddo
      enddo

      if (sum(a).eq.ANS1) then
         ok = 1
      endif
      if (real(sum(c1))+aimag(sum(c1)).eq.ANS2) then
         ok = ok + 1
      endif
      if (real(sum(c2))+aimag(sum(c2)).eq.ANS3) then
         ok = ok + 1
      endif
      if (ok .eq. ANS) then
         print *,"OK"
      else
         print *,"NG"
      endif

      contains

      subroutine init_var()

      a  = 0.0
      c1 = (0.0,0.0)
      c2 = (0.0,0.0)
 
      end subroutine

      end
