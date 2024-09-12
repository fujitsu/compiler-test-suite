module m1
  type x
     integer::x1
     class(*),pointer::x2
  end type
end
subroutine s1
  use m1
  type(x)::vt
  class(x),pointer::vc
  vt=ft()
  if (vt%x1/=1)print *,101
  k =fk()
  if (k/=2)print *,102
  vc=>fc()
  if (vc%x1/=2)print *,103
  contains
   function ft() result(r)
    type(x),pointer::r
    type(x),target,save::t
    r=>t
    r%x1=1
   end function
   function fk() result(r)
    integer,pointer::r
    integer,target,save::t
    r=>t
    r=2
   end function
   function fc() result(r)
    class(x),pointer::r
    type(x),target,save::t
    r=>t
    r%x1=2
   end function
end
call s1
print *,'pass'
end
