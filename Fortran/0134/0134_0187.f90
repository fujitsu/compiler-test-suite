module mod0
contains
 function px6(arg) result(r)
   interface 
     function x1(i) result(r)
      character(i),pointer::r
     end function
   end interface
   procedure (x1),pointer :: r,arg
   r=>x1
   arg=>r
 end function
end
print *,'pass'
end
     function x1(i) result(r)
      character(i),pointer::r
      allocate(r)
      r='12'
     end function
