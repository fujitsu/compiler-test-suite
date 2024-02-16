integer,pointer::p(:)
integer,target::a(5)=[1,2,3,4,5]
integer,target::b(5)=[1,2,3,4,5]
       p=>b(1:5:2)
       call foo(a(1:5:3),p(:2),a(1:5:2))
       if (any(a/=[21,2,13,24,15])) print *,102,a
       if (any(b/=[11,2,13,4,5])) print *,102,b
       print *,'pass'
       contains
      subroutine foo(e,d,f)
      integer,contiguous::e(:)
      integer,contiguous::d(:)
      integer,contiguous::f(:)
      f = f +10
      e = e +20
      d = d +10
      end subroutine
      end
