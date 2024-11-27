module m1
  integer:: val=0

  procedure(fun),pointer, protected, save:: p
  contains
    function fun()
     integer::fun
     fun=11
    end 
    subroutine ss
     p=> fun
    end subroutine
end

   use m1
   call ss
   val=p()
   if(val/=11) print *,101
   print *,'Pass'
   end

