module m1
contains
  function f() result(r)
   character(:),allocatable::r
   allocate(character(2)::r)
     r='12'
   end function
subroutine s1()
   character(:),allocatable::var

   allocate(character(2)::var)
       var=f()

      if (len(var)     /=2) print *,2828
      if (var   /='12') print *,2829
   end subroutine
end
use m1
call s1()
     print *,'sngg665s : pass'
     end

