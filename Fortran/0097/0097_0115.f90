integer::x(5)= [1,2,3,4,5]
call foo(x)
if (any(x/=[11,2,13,4,15])) print *,105,x
       print *,'pass'
       contains
       subroutine foo(x,d)
       integer::x(:)
       integer,optional::d(:)
       if (present(d)) then
          print *,101
       end if
       call foo2(x(1:5:2),d)
      end subroutine
     subroutine foo2(x,d)
      integer,contiguous::x(:)
      integer,optional,contiguous::d(:)

      if (present(d)) then
         print *,102
      end if
      x =x+10
      end subroutine
      end

