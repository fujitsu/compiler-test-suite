module m1
  integer:: v
  procedure(sub),pointer, protected:: p=>sub
  contains
    subroutine sub
     v= 42
    end subroutine
end

   use m1
   call p
   if(v/=42) print *,101
   print *,'Pass'
   end

