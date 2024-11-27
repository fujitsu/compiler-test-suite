module mod
 contains
 function f(num) result(r)
   integer,intent(in)::num
   class(*),pointer::r
   if (num==1) then
     allocate(character::r)
   else
     allocate(integer::r)
   end if
   select type(r)
    type is(character(*))
      r='a'
    type is(integer)
      r=1
    end select
  end function
end 
program main
  use mod
  type drived_type
  end type
  do num=1,2
    select type (v => f(num))
      type is (character(*) )
        if (v/='a') print *,'error-1',' v=',v, ' num=',num
      type is (integer)
        if (v/=1) print *,'error-2',v
    end select
  end do
print *,'pass'
end
