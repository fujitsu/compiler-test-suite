module m1
  procedure(e)::x
  procedure(d)::y
interface gen
   procedure::x,y
end interface
  contains
    subroutine d(z)
     character(*),pointer::z
     if (z/='1') print *,1001
    end
    subroutine e(z)
     integer     ,pointer::z
     if (z/=1) print *,1002
    end
end
module n1
use m1
  private::x
end
use n1
     character,pointer::w
     integer     ,pointer::q
allocate(w,source='1')
allocate(q,source=1)
call d  (w)
call y  (w)
call gen  (w)
call gen  (q)
print *,'sngg921o : pass'
end
    subroutine y(z)
     character(*),pointer::z
     if (z/='1') print *,2001
    end
    subroutine x(z)
     integer     ,pointer::z
     if (z/=1) print *,2002
    end
