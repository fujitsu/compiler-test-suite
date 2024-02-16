       type ty
        integer::a(5)=[1,2,3,4,5]
       integer ::b(5)=[1,2,3,4,5]
       endtype ty
       type(ty)::obj(10)
       integer::k=1
       integer::l=1
       call sub(obj(::k))
       call foo2(obj(1)%a(l::k))
       if (any(obj(1)%a/=[21,22,23,24,25])) print *,105,obj(1)%a
       call foo(obj(2)%b(l::k))
       if (any(obj(2)%b/=[11,12,13,14,15])) print *,105,obj(1)%b
       print *,'pass'
       contains
      subroutine sub(d)
      type(ty),contiguous::d(:)
        if (loc(d).ne.loc(obj)) print *,102
        d(1)%a = d(1)%a +10
        d(1)%b = d(1)%b +10
      end subroutine
      subroutine foo(d)
      integer,contiguous::d(:)
        if(any(d /= [1,2,3,4,5])) print *,101,d
        if (loc(d).ne.loc(obj(2)%b)) print *,109
        d = d+ 10
      end subroutine
      subroutine foo2(d)
      integer,contiguous::d(:)
        if (any(d /= [11,12,13,14,15])) print *,101,d
        if (loc(d).ne.loc(obj(1)%a)) print *,111
        d = d+ 10
      end subroutine
      end


