module m1
  procedure(d)::x
   interface gen
     procedure::x
   end interface
  contains
    subroutine d(z)
     character(*)::z
     print *,2001,z
    end
end
module n2
use m1
end
use n2
call gen('1')
print *,'sngg898o : pass'
end
    subroutine x(z)
     character(*)::z
     if (z/='1')print *,1001
    end
    
