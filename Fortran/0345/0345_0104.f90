      function ifun_fun(i,a)
      integer(4)::a(1)
        a=a+i
        ifun_fun=i*1
      end function

      module mod
      contains
        function ifun(i,a)
         integer(4)::a
         integer(4)::i
          ifun = ifun_fun(i,a)
        end function
      end module

      program main
       use mod
       integer(4)::a=1
       integer(4)::i=1
        kk = ifun(i,a)
        print *,'pass'
      end program
