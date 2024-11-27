module mod
  type ty
    integer::z
  end type
 contains
 function f(num) result(r)
   integer,intent(in)::num
   class(*),pointer::r
   if (num==1) then
     allocate(integer::r)
   else if (num==2) then
     allocate(real   ::r)
   else
     allocate(ty   ::r)
   end if
   select type(r)
    type is(integer)
      r=1
    type is(real)
      r=100.2
    type is(ty)
      r=ty(50)
    end select
  end function
end 
program main
  use mod
  do num=1,3
    select type (v => f(num))
      type is (integer     )
        if (v/=1) print *,'error-1',' v=',v, ' num=',num
        if (num/=1) print *,708
      type  is(ty)
        if (num/=3) print *,707
        if (v%z/=50) print *,'error-3',v
      type is (real)
        if (v/=100.2) print *,'error-2',v
        if (num/=2) print *,709
    end select
  end do
print *,'pass'
end
