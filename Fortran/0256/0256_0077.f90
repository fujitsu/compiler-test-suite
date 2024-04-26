integer,contiguous,pointer::q(:)
integer,target::c(5)=[1,2,3,4,5]
integer,contiguous,pointer::r(:)
integer,target::d(5)=[1,2,3,4,5]
integer,contiguous,pointer::s(:)
integer,target::e(5)=[1,2,3,4,5]
 q=>c
 r=>d
 s=>e
call foo(q,r,s)
       if (any(q/=[10,2,10,4,10])) print *,105,q
       if (any(r/=[10,2,10,4,10])) print *,105,r
       if (any(s/=[10,2,10,4,10])) print *,105,s
       print *,'pass'
      contains
      subroutine foo(g,h,s)
      integer,contiguous,optional::g(:)
      integer,contiguous::h(:)
      integer::s(5)
      if (present(g)) then
      call foo2(g(1:5:2),h(1:5:2),s(1:5:2))
      end if
      end subroutine
      subroutine foo2(i,j,k)
      integer,contiguous,optional::i(:)
      integer,contiguous::j(:)
      integer::k(3)
      if (present(i)) then
        if (i(1)/=1 .or. i(2)/=3) print *,101,i
        i = 10
        j = 10
        k = 10
      end if
      end subroutine
      end
