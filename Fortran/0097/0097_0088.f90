subroutine s1(k)
       integer,target ::t(5)=[1,2,3,4,5]
       call ss(t(::t(k)))
     if (any(t(:5)/=[11,2,13,4,15])) print *,203
      contains
      subroutine ss(a)
      integer,contiguous::a(:)
      if (loc(t).eq.loc(a)) print *,1201,loc(a)
      call sss(a)
      end subroutine
      subroutine sss(b)
      integer::b(*)
      if (loc(t).eq.loc(b)) print *,201,loc(b)
     if (any(b(:3)/=[1,3,5])) print *,203
      b(1:3) = [11,13,15]
      end subroutine
      end subroutine
      call s1(2)
      print *,'pass'
      end

