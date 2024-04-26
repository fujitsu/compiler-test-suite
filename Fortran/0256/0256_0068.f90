integer,pointer::q(:)
       integer,target::c(5)=[1,2,3,4,5]
       q=>c(1:5:2)
       call foo(q)
       if (any(q/=[10,10,10])) print *,105,q
       print *,'pass'
      contains
      subroutine foo(g)
      integer,contiguous,optional::g(:)
      if (present(g)) then
        if (g(1)/=1 .or. g(2)/=3) print *,101,g
        g= 10
      end if
      end subroutine
      end
