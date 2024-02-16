       integer,target::a(5)=[1,2,3,4,5]
       integer,target::b(5)=[1,2,3,4,5]
       integer::k=2
       integer::l=1
       call foo(a(l::k))
       if (any(a/=[11,2,13,4,15])) print *,105,a
       call foo(b(l:l+4:k))
       if (any(b/=[11,2,13,4,15])) print *,105,b
       print *,'pass'
       contains
      subroutine foo(d)
      integer,contiguous::d(:)

        if (d(1)/=1 .or. d(2)/=3) print *,101
        if (loc(d).eq.loc(a)) print *,102
        d = d+ 10
      end subroutine
      end


