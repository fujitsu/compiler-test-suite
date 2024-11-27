module mod
      contains
        function f() result(r)
        class(*),pointer::r
         allocate(r, source= 2)
        end function
end 

   use mod

      select type (v => f())
      type is (real)
          print *,'error'
      end select

print *,'pass'
end 
