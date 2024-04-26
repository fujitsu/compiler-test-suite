      function func() result(pp)
       common /com/ tt
       integer(4),target::tt(2)
       integer(4),pointer::pp(:)
        pp=>tt
      end function

      program main
       common /com/ tt
       integer(4),target::tt(2)
       integer(4),pointer::p(:)
       interface
        function func() result(pp)
         common /com/ tt
         integer(4),target::tt(2)
         integer(4),pointer::pp(:)
        end function
       end interface
        tt=(/1,2/)
        p=>func()
        if (any(p/=(/1,2/))) print *,p
        print *,'pass'
      end program
