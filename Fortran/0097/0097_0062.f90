       type ty
        integer::a(5)=[1,2,3,4,5]
       integer ::b(5)=[1,2,3,4,5]
       endtype ty
       type(ty)::obj(10)
       integer::k=2
       integer::l=1
       call sub(obj(::k))
       call foo2(obj(1)%a(l::k))
       if (any(obj(1)%a/=[21,12,23,14,25])) print *,105,obj(1)%a
       call foo(obj(2)%b(l:l+4:k))
       if (any(obj(2)%b/=[11,2,13,4,15])) print *,105,obj(1)%b
       print *,'pass'
       contains
      subroutine sub(d)
      type(ty),contiguous::d(:)

        if (loc(d).eq.loc(obj)) print *,102
        d(1)%a = d(1)%a +10
        d(1)%b = d(1)%b +10
      end subroutine
      subroutine foo(d)
      integer,contiguous::d(:)

        if (d(1)/=1 .or. d(2)/=3) print *,101,d
        if (loc(d).eq.loc(a)) print *,102
        d = d+ 10
      end subroutine
      subroutine foo2(d)
      integer,contiguous::d(:)

        if (d(1)/=11 .or. d(2)/=13 .or. d(3) /= 15) print *,101,d
        if (loc(d).eq.loc(a)) print *,102
        d = d+ 10
      end subroutine
      end


