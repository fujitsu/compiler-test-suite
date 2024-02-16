call foo( )
       print *,'pass'
       contains
       subroutine foo(d)
       integer,optional::d(:)
       if (present(d)) then
          print *,101
       end if
       call foo2(d)
      end subroutine
     subroutine foo2(d)
     integer,optional,contiguous::d(:)

      if (present(d)) then
         print *,102
      end if
      call foo3(d)
      end subroutine
     subroutine foo3(d)
     integer,optional,contiguous::d(:)

      if (present(d)) then
         print *,102
      end if
      end subroutine
      end

