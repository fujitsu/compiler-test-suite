      program main
       i=0
      call sub1(i)
      call sub2(i)
      call sub3(i)
      call insub()
      if (i.ne.12) print *,'err 1 '
      print *,'pass'
      contains 
        subroutine insub()
        call sub1(i)
        call sub2(i)
        call sub3(i)
        end subroutine
      end

      module mod1
       integer a1
      end

      subroutine sub1(i)
      use mod1,b1=>a1,b2=>a1
       b1=1
      i=i+b2
      end

      module mod2
       integer a1
      end

      subroutine sub2(i)
      use mod2
       a1=2
      i=i+a1
      end

      module mod3
       integer a1,a2
       equivalence (a1,a2)
      end

      subroutine sub3(i)
      use mod3
       a1=3
      i=i+a2
      end
