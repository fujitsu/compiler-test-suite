      call ss1
      print *,' *** pass ***'
      end
      subroutine ss1
      interface int_a
        subroutine a11(a,b,c)
          integer*4  a,b,c
          optional   b,c
        end subroutine

        subroutine a12(x,y)
          integer*4  x,y
          optional   y
        end subroutine
      end interface
      interface int_b
        subroutine b11(a,b,c)
          integer*4  a
          real*4,dimension(5) :: b
          character(len=1)  c
          optional   b,c
        end subroutine

        subroutine b12(a,m,c)
          integer*4  a
          real*4     m
          character*1   c
          optional   c
        end subroutine
      end interface
      interface int_c
        subroutine c11(a,b,c)
          integer*4  c
          integer*4,dimension(5) :: a
          real*4,dimension(10)   :: b
        end subroutine

        subroutine c12(a,b,c)
          integer*4  c
          integer*4,dimension(5,1) :: a
          real*4,dimension(10,1)   :: b
        end subroutine
      end interface
      integer*4,parameter ::  i11=1,i12=2,i13=3,i14=4
      integer*4  ai11(5),ai12(5,1)
      real*4,parameter :: r41=1.
      real*4     ar41(10),ar42(10,1)
      character(len=1) ch
      ai11=(/(i,i=1,5)/)
      ai12=5
      ar41=(/(i,i=1,10)/)
      ar42=10
      ch='g'
      call int_a(i11,i12,i13)
      call int_a(i14,y=i12)
      call int_a(i11,c=i13)
      call int_b(i11,ar41)
      call int_b(i14,r41)
      call int_b(i11,c=ch)
      call int_b(i14,r41,ch)
      call int_c(ai11,ar41,i11)
      call int_c(ai12,ar42,i14)
      end

      subroutine a11(a,b,c)
      integer*4  a,b,c
      integer(kind=4)  d
      optional   b,c
      d = 0
      if (present(c)) d = c
      if (present(b)) d = d - b
      if (a.ne.1) print *,' +++ error in a11 +++'
      end

      subroutine a12(x,y)
      integer*4  x,y
      logical    z
      optional   y
      z=present(y)
      if (x.ne.4) print *,' +++ error in a12 +++'
      end

      subroutine b11(a,b,c)
      integer*4  a
      real*4,dimension(5) :: b
      character(len=1)  c
      logical    z
      optional   b,c
      z=present(b)
      z=present(c)
      if (a.ne.1) print *,' +++ error in b11 +++'
      end

      subroutine b12(a,m,c)
      integer*4  a
      real*4     m
      character*1   c
      logical z
      optional   c
      z=present(c)
      if ((a*1.0).ne.(m*4)) print *,' +++ error argument +++'
      if (a.ne.4) print *,' +++ error in b12 +++'
      end

      subroutine c11(a,b,c)
      integer*4  c
      integer*4,dimension(5) :: a
      real*4,dimension(10)   :: b
      if ((a(1)*1.0).ne.b(1)) print *,' +++ error argument +++'
      if (c.ne.1) print *,' +++ error in c11 +++'
      end

      subroutine c12(a,b,c)
      integer*4  c
      integer*4,dimension(5,1) :: a
      real*4,dimension(10,1)   :: b
      if ((a(1,1)*2.0).ne.b(1,1)) print *,' +++ error argument +++'
      if (c.ne.4) print *,' +++ error in c12 +++'
      end
