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
k=0
    select type (v => f(num))
      class is(drived_type)
      type is (character(*) )
        if (len(v)/=1) print *,'error-11',' len=',len(v),'num=',num
        if (v/='a') print *,'error-12',' len=',len(v),' v=',v, ' num=',num
        k=1
    end select
if (num==1) then
   if (k/=1) print *,761
else
   if (k/=0) print *,762
end if
  end do
print *,'pass'
end
