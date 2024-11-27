module mod
 contains
 function f() result(r)
   class(*),pointer::r
   allocate(integer(8)     ::r)
   select type(r)
    type is(integer(8))
      r=2147483648123_8
    end select
  end function
end 
program main
  use mod
  type drived_type
  end type
  select type (v => f())
      type is(real      )
        print *,'error'
      type is(integer(8))
       if (v/=2147483648123_8) print *,601,v
      type is (character(*) )
        print *,'error-2'
      type is(drived_type)
  end select
print *,'pass'
end
