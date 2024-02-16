call foo( )
       print *,'pass'
       contains
       subroutine foo(d)
       integer,optional,contiguous::d(:)
       if (present(d)) then
          print *,101
       end if
       call foo2(d)
      end subroutine
     subroutine foo2(d)

      integer,optional::d(2)
      if (present(d)) then
         print *,102
      end if
      end subroutine
      end

