module m1
 interface a
   subroutine sub 
   end subroutine
 end interface
contains
subroutine s1
 interface a
   subroutine sub1(i)
   end subroutine
 end interface
 block
 interface a
   subroutine sub2(r)
   end subroutine
 end interface
call a
call a(1)
call a(1.0)
 end block
 block
 interface a
   subroutine sub2(r)
   end subroutine
 end interface
call a
call a(1)
call a(1.0)
call subx
 end block
call a
call a(1)
call subx
 contains 
   subroutine subx
     interface 
      subroutine sub
      end subroutine
     end interface
   end subroutine
end subroutine
end

      subroutine sub
      end subroutine
      subroutine sub1(i)
      end subroutine
      subroutine sub2(r)
      end subroutine

 use m1
call s1
print *,'pass'
end
