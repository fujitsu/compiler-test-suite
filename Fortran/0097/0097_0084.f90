subroutine s1(k)
     type ty
        integer::k 
     end type
    type(ty)::obj
       integer,target ::t(5)=[1,2,3,4,5]
       obj%k =k
       call ss(t(obj%k-1:5:obj%k-1)) 
      if(any(t.ne.[11,12,13,14,15]))print*,205
      contains
      subroutine ss(a)
      integer,contiguous::a(:)
      if (loc(t).ne.loc(a)) print *,120,loc(a)
      call sss(a)
      end subroutine
      subroutine sss(b)
      integer::b(*)
      if (loc(t).ne.loc(b)) print *,201,loc(b)
     if (any(b(:5)/=[1,2,3,4,5])) print *,203
      b(:5) = [11,12,13,14,15]
      end subroutine
      end subroutine
      call s1(2)
      print *,'pass'
      end

