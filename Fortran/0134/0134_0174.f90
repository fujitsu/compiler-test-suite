subroutine s1
   procedure (x1),pointer :: p
p=>px6()
if (p(2)/='12')print *,3
 contains
 function px6() result(r)
   interface 
     function x1(i) result(r)
      character(i),pointer::r
     end function
   end interface
   procedure (x1),pointer :: r
   r=>x1
 end function
 function x1(i) result(r)
      character(i),pointer::r
      allocate(r)
      r='12'
     end function
end
call s1
print *,'pass'
end
 function x1(i) result(r)
      character(i),pointer::r
      allocate(r)
      r='12'
     end function
