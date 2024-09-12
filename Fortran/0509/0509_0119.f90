module mod
   procedure (px6),pointer :: p
 contains
 function px6() result(r)
   procedure (x2),pointer :: r
   r=>x2
 end function
 function x1(i) result(r)
      character(i),pointer::r
      allocate(r)
      r='12'
     end function
subroutine s(p)
   procedure (x2),pointer :: p
if (p(2)/='12')print *,3
end subroutine
 function x2(i) result(r)
      character(i),pointer::r
      allocate(r)
      r='12'
  end function
end

subroutine s1
use mod
p=>px6
call s(p())
end 

call s1
print *,'pass'
end
