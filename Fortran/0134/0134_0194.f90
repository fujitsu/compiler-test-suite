subroutine y(f,p)
   procedure(),pointer::p
interface
 function f() 
   procedure(),pointer::f
 end function
end interface
end
subroutine x(f,p)
   integer,pointer::p
   integer,pointer::w
   common w
interface
 function f() 
   integer,pointer::f
 end function
end interface
end
print *,'pass'
end
