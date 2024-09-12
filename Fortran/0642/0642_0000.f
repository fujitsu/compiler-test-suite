      call sub
      print *,'pass'
      end
      subroutine sub
      integer d
      structure /test/
       integer :: a
       real    :: b
      endstructure
      record /test/ c
      c.a =d
      c.b =d
      end
