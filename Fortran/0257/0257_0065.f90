subroutine s1()
 type ty
   integer::array(5)
 end type
 type(ty)::obj
 integer,target ::t(5)=[1,2,3,4,5]
 obj%array = [1,2,3,4,5]
  call ss(t(1:5:obj%array(1)))
       if(any(t.ne.[11,12,13,14,15]))print*,"101"
      contains
      subroutine ss(a)
      integer::a(5)
      if (loc(t).ne.loc(a)) print *,120,loc(a)
      call sss(a)
      end subroutine
      subroutine sss(b)
      integer::b(*)
      if (loc(t).ne.loc(b)) print *,201,loc(b)
     if (any(b(:5)/=[1,2,3,4,5])) print *,203
      b(1:5)= [11,12,13,14,15]
      end subroutine
      end subroutine
      call s1()
      print *,'pass'
      end

