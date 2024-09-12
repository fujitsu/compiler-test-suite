      print *,'pass'
      end
      subroutine ss01()
      integer,dimension(4)::b=(/100,200,300,400/)
      integer,dimension(3)::x
      pointer (j,x)
      j=loc(b(2))
      end
      subroutine ss02(j)
      integer,dimension(4)::b=(/100,200,300,400/)
      integer,dimension(3)::x
      pointer (j,x)
      j=loc(b(2))
      end
      subroutine ss03()
      integer,dimension(4)::b=(/100,200,300,400/)
      integer,dimension(3)::x
      pointer (j,x)
      if (1.eq.2) print *,loc(b(2))
      end
      subroutine ss04(j)
      integer,dimension(4)::b=(/100,200,300,400/)
      integer,dimension(3)::x
      pointer (j,x)
      if (1.eq.2) print *,loc(b(2))
      end
      subroutine ss05()
      integer,dimension(4)::b=(/100,200,300,400/)
      integer,dimension(3)::x
      pointer (j,x)
      if (1.eq.2) print *,loc(b(2))
        x(1)=1
      end
      subroutine ss06(j)
      integer,dimension(4)::b=(/100,200,300,400/)
      integer,dimension(3)::x
      pointer (j,x)
      if (1.eq.2) print *,loc(b(2))
        x(1)=1
      end
      subroutine ss07()
      i=1
      end subroutine
      subroutine ss08()
      integer i
      i=1
      end subroutine
      subroutine ss09()
      integer i
      data i/1/
      end subroutine
      subroutine ss10()
      integer,parameter :: i=1
      end subroutine
      subroutine ss11()
      print *,j
      end subroutine
      subroutine ss12()
      integer j
      end subroutine
      subroutine ss13()
      integer j
      print *,j
      end subroutine
      subroutine ss14()
      data i /1/
      i=1
      end subroutine
      subroutine ss15()
      common /aom/i
      end subroutine
      subroutine ss16()
      equivalence (ii,jj)
      end subroutine
      subroutine ss17()
      call ss16()
      end subroutine
