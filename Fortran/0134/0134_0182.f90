subroutine s1
   procedure (x1),pointer :: p
p=>px6()
if (p(2)/='1234')print *,3
 contains
 function px6() result(r)
   interface 
     function x2(i) result(r)
      character(i+i),pointer::r
     end function
   end interface
   procedure (x2),pointer :: r
   r=>x2
 end function
 function x1(i) result(r)
      character(i+i),pointer::r
      allocate(r)
      r='1234'
     end function
end
call s1
print *,'pass'
end
     function x2(i) result(r)
      character(i+i),pointer::r
      allocate(r)
      r='1234'
     end function
