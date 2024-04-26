      function ifun(n,a)
       integer(kind=4),intent(in)::n
       integer(kind=4),dimension(n),intent(inout)::a
       a=a+1
       ifun=sum(a)
      end function

      program main
       integer(kind=4),parameter::n=5
       integer(kind=4),dimension(n)::a
        a=(/1,2,3,4,5/)
        kk=ifun(n,a(1:5:1))
        print *,'pass'
      end program
