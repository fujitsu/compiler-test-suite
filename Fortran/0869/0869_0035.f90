module mod
 contains
 function f() result(r)
   class(*),pointer::r
   allocate(integer(8)::r)
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
  k=0
  select type (v => f())
      type is(integer(1))
        print *,'error'
      type is(integer(8))
       if (v/=2147483648123_8) print *,601,v
       k=1
      type is (character(*) )
        print *,'error-2'
      type is(drived_type)
  end select
if (k/=1) print *,9001
print *,'pass'
end
