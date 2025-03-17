interface 
   function f()
   integer,pointer::f
   end function
end interface
if (associated(f()))print *,'error'
print *,'pass'
end
   function f()
   integer,pointer::f
   f=>NULL()
   end function
