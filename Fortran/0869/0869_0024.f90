module mod
 contains
 function f(num) result(r)
   integer,intent(in)::num
   class(*),pointer::r
   if (num==1) then
     allocate(integer::r)
   else
     allocate(real   ::r)
   end if
   select type(r)
    type is(integer)
      r=1
    type is(real)
      r=100.2
    end select
  end function
end 
program main
  use mod
  type ty
  end type
  do num=1,2
    select type (v => f(num))
      type is (integer     )
        if (v/=1) print *,'error-1',' v=',v, ' num=',num
      type is (real)
        if (v/=100.2) print *,'error-2',v
      type  is(ty)
         print *,900
    end select
  end do
print *,'pass'
end
