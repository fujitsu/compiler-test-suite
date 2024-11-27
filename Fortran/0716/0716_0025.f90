 integer a
 real    b

 call sub(a, b)
 end

 subroutine sub(func, b)
 interface
  function func(a)
   real a
  end function
 end interface
 real b
 end
