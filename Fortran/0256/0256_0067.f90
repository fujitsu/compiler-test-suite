integer,pointer::q(:)
       q=>NULL()
       call foo(q)
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
