      call pro
      print *,'pass'
      end
      subroutine pro
      structure /str/
        integer b
      endstructure
      record /str/ a
      a.b=1
      call sub1(a.b)
      end
      subroutine sub1(x)
      integer x(10),y
      y=x(1)
      end
