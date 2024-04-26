integer,pointer::p(:)
integer,pointer::q(:)
       integer,target::a(5)=[1,2,3,4,5]
       integer,target::aa(5)=[1,2,3,4,5]
       integer,target::c(5)=[1,2,3,4,5]
       integer::b(5)=[1,2,3,4,5]
       p=>null()
       q=>c(1:5:2)
       call foo(a(1:5:2),p,b(1:5:2),q,aa)
       if (any(a/=[11,2,13,4,15])) print *,103,a
       if (any(b/=[40,2,40,4,40])) print *,104,b
       if (any(q/=[11,13,15])) print *,105,q
       print *,'pass'
       contains
      subroutine foo(e,d,f,g,h)
      integer,contiguous::e(:)
      integer,optional,contiguous::d(:)
      integer,contiguous::f(:)
      integer,optional,contiguous::g(:)
      integer::h(5)
      if (present(d)) then
        if (d(1)/=1 .or. d(2)/=3) print *,"1011" ,d
      end if
      if (present(g)) then
        if (g(1)/=1 .or. g(2)/=3) print *,"1021",g
      end if
      call foo2(e,d,f,g,h)
      end subroutine
      subroutine foo2(e,d,f,g,h)
      integer,contiguous::e(:)
      integer,optional,contiguous::d(:)
      integer,contiguous::f(:)
      integer,optional,contiguous::g(:)
      integer::h(5)
      if (present(d)) then
        if (d(1)/=1 .or. d(2)/=3) print *,"1011" ,d
      end if
      if (present(g)) then
        if (g(1)/=1 .or. g(2)/=3) print *,"1021",g
        g= g+10
      end if
      e =e +10
      h =30
      f = 40
      end subroutine
      end
