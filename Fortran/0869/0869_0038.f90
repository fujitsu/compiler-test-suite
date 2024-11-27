module mod
 contains
 function f() result(r)
   class(*),pointer::r
   allocate(character(3)::r)
   select type(r)
    type is(character(*))
      r='123456789'
    end select
  end function
end 
program main
  use mod
  type drived_type
  end type
  select type (v => f())
      type is(integer(2))
        print *,'error'
      type is (character(*) )
        if (len(v)/=3) print *,'error-11',' len=',len(v)
        if (v/='123') print *,'error-12',' len=',len(v)
      type is(drived_type)
  end select
print *,'pass'
end
