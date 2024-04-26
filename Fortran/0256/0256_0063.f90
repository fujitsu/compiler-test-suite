integer,pointer::p(:)
       integer,target::a(5)=[1,2,3,4,5]
       p=>null()
       call foo(p,a,a(1:5:2))
       if (any(a/=[11,2,13,4,15])) print *,102,a
       print *,'pass'
       contains
      subroutine foo(d,e,f)
      integer,optional::d(3)
      integer,optional,contiguous::e(:)
      integer,optional,contiguous::f(:)
      if (present(d)) then
        if (d(1)/=1 .or. d(2)/=3) print *,101
      end if
      f = f +10
      end subroutine
      end
