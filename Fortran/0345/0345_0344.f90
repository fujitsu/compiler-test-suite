      module mod
       integer(4)::aa(251)
       contains
        subroutine sub1()
         logical(1)::a(1000)
        end subroutine
        subroutine sub2()
         logical(1)::a(1001)
        end subroutine
        subroutine sub3()
         logical(1)::a(1000),b(1)
        end subroutine
      end module

      program main
       use mod
        call sub1
        call sub2
        call sub3
        print *,'pass'
      end
