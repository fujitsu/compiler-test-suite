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
use m1
call gen('1')
print *,'sngg897o : pass'
end
    subroutine x(z)
     character(*)::z
     if (z/='1')print *,1001
    end
    
