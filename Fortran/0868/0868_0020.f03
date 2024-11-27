module m1
      contains
        function f() result(r)
         class(*),pointer::r(:)
         allocate(r(2), source= [2,3])
        end function
end 
program main
use m1
      select type (v => f())
        type is (real)
          print *,'error'
      end select               

print *,'pass'
end program
