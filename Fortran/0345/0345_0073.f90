      module mod
       integer(4),target::tt
       contains
        function func() result(pp)
         integer(4),pointer::pp
          pp=>tt
        end function
      end module

      program main
       use mod
        integer(4),pointer::p
        tt=2
        p=>func()
        if (any(p/=(/2/))) print *,p
        print *,'pass'
      end program
