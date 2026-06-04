module m0
contains
  function f() result(r)
   character(:),allocatable::r
   allocate(character(2)::r)
     r='12'
   end function
end
module m1
use m0
contains
subroutine s1()
     class(*),allocatable::name

       allocate(name,source=f())
   k=0
   select type(p=>name)
    type is(character(*))
      if (len(p)     /=2) print *,2828
      if (p     /='12') print *,2829
      k=1
   end select
   if (k/=1) print *,2928
   end subroutine
end
use m1
call s1()
     print *,'sngg660s : pass'
     end
