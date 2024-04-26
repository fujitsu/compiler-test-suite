module m1
    interface gen
      procedure s1,s2
    end interface
  contains
   subroutine s1(i)
   if (i/=1) print *,1
   end subroutine
   subroutine s2(r)
   if (r/=2) print *,2
   end subroutine
end
use m1
call gen(1)
call gen(2.0)
print *,'pass'
end
