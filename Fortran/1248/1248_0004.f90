module m1
  procedure(d)::x
  private::x
  contains
    subroutine d(z)
     character(*)::z
     if (z/='1') print *,1001
    end
end
use m1
call d  ('1')
print *,'sngg915o : pass'
end
