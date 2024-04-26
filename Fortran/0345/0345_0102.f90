      function ifun(i,a)
      integer(4)::a(1)
        a=a+i
        ifun=i*1
      end function

      program main
       integer(4)::a=1
       integer(4)::i=1
        k = ifun(i,a)
        print *,'pass'
      end program
