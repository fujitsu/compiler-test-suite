module mod
 contains
 function f() result(r)
   class(*),pointer::r
   allocate(real(8)  ::r)
   select type(r)
    type is(real(8))
      r=1.23456789_8
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
      type is (character(*) )
        print *,'error-2'
        if (len(v)/=9) print *,'error-11',' len=',len(v)
        if (v/='123456789') print *,'error-12',' len=',len(v)
      type is(real(8)   )
       if (abs(v-1.23456789_8)>0.00001) print *,601,v
k=1
      type is(drived_type)
  end select
if (k/=1) print *,8900 
print *,'pass'
end
