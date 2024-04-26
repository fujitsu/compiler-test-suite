      program main

      integer, parameter:: N=20
      integer, dimension(1:N):: a
      integer, dimension(1:N):: b
      integer, dimension(1:N):: c
      real     data
      logical  msk(N)
      real     func1,func2
      integer, parameter:: ANS1=-12
      integer, parameter:: ANS2= 10
      integer, parameter:: ANS3=839

      call init_ary

      call sub1(a,N,ANS1)
      call sub1(a+b,N,ANS2)
      call sub2(a,b,c,data,N)
      call sub2(a,a*b,a*c,data,N)
      data = data - func1(a,N)
      data = data + func1(a+b,N)
      data = data - func2(a,b,c,N)
      data = data + func2(a,a*b,a*c,N)

      data = data + real(sum(a))/real(N)

      if (int(data).eq.ANS3) then
         print *,"OK"
      else
         print *,"NG"
      endif

      contains

      subroutine init_ary
      a = (/(MOD(i,5),i=1,N)/)
      b = (/(MOD(i,7),i=1,N)/)
      c = (/(MOD(i,9),i=1,N)/)
      msk = .false.
      data = 0.
      end subroutine init_ary

      end 

      subroutine sub1(a,N,ANS)
      integer N
      integer a(N)
      integer ANS
      integer data(N)

      data = 0
      where (a > 3)
         data = data + 1
      elsewhere
         data = data - 1
      endwhere

      if (sum(data) .ne. ANS) then
         print *,"NG"
      endif
      end subroutine sub1

      subroutine sub2(a,b,c,data,N)
      integer N
      integer a(N),b(N),c(N)
      real data
      logical msk(N)

      msk = (b>c)

      where (msk)
         a = b + 1
      elsewhere
         a = c + 1
      endwhere

      data = data + real(sum(a))
      end subroutine sub2

      real function func1(a,N)
      integer N
      integer a(N)
      integer data(N)

      data = 0
      where (a > 3)
         data = data + 1
      elsewhere
         data = data - 1
      endwhere

      func1 = real(sum(data))/real(N)
      end function func1

      real function func2(a,b,c,N)
      integer N
      integer a(N),b(N),c(N)
      logical msk(N)

      msk = (b>c)

      where (msk)
         a = b + 1
      elsewhere
         a = c + 1
      endwhere
      
      func2 = real(sum(a))/real(N)
      end function func2
