module m1
 interface 
   subroutine sub
   end subroutine
 end interface
contains
subroutine s1
 interface 
   subroutine sub
   end subroutine
 end interface
call sub
call sub2
 contains 
   subroutine sub2
     interface 
      subroutine sub
      end subroutine
     end interface
   end subroutine
end subroutine
end

      subroutine sub
      end subroutine

 use m1
call s1
print *,'pass'
end
