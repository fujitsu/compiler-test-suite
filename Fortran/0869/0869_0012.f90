module mod

      contains
        function f() result(r)
        class(*),pointer::r
         allocate(r, source= 1.2)
        end
end 

   use mod
type temp_type
end type

      select type (v => f())
      type is (integer)
        print *,900
      type is (real )
        if (v/=1.2) print *,8001,v
      type is (temp_type)
        print *,9002
      end select

print *,'pass'
end 
