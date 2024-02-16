call foo( )
       print *,'pass'
       contains
       subroutine foo(d,e)
       integer,optional::d(:)
       integer,optional::e(:)
       if (present(d)) then
          print *,101
       end if
       call foo2(d,e)
       if (present(e)) then
          print *,101
       end if
       call foo2(e,d)
      end subroutine
     subroutine foo2(d,e)
     integer,optional,contiguous::d(:)
     integer,optional::e(:)

      if (present(d)) then
         print *,102
      end if
      if (present(e)) then
         print *,102
      end if
      call foo3(d,e)
      end subroutine
     subroutine foo3(d,e)
     integer,optional,contiguous::d(:)
     integer,optional,contiguous::e(:)

      if (present(d)) then
         print *,102
      end if
      if (present(e)) then
         print *,102
      end if
      end subroutine
      end

