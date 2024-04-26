integer,pointer::p(:)
integer,target::a(5)=[1,2,3,4,5]
       p=>null()
       call foo(a(1:5:3),p,a(1:5:2))
       if (any(a/=[21,2,13,24,15])) print *,102,a
       print *,'pass'
       contains
      subroutine foo(e,d,f)
      integer,contiguous::e(:)
      integer,optional,contiguous::d(:)
      integer,contiguous::f(:)
      if (present(d)) then
        if (d(1)/=1 .or. d(2)/=3) print *,101
      end if
      f = f +10
      e = e +20
      end subroutine
      end
