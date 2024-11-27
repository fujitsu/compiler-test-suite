      type ty
      end type
      Select type (v => f())
      type is (real)
          print *,'error'
      class is(ty)
      end select

print *,'pass'
      contains
        function f() result(r)
         class(*),pointer::r
         allocate(r, source= 2)
        end function
end 
