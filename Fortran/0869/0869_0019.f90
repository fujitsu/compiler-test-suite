module mod
 contains
 function f() result(r)
   class(*),pointer::r
   allocate(character::r)
   select type(r)
    type is(character(*))
      r='a'
    end select
  end function
end 
program main
  use mod
  type drived_type
  end type
  select type (v => f())
      class is(drived_type)
        print *,900
      type is (character(*) )
        if (len(v)/=1) print *,'error-11',' len=',len(v)
        if (v/='a') print *,'error-12',' len=',len(v),' v=',v
  end select
print *,'pass'
end
