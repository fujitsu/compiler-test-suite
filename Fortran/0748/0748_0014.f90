use iso_c_binding
interface c_sizeof
   function ix(k,i)
   end function
end interface
print *,c_sizeof(1,2)
print *,'pass'
end
   function ix(k,i)
    x=1
   end function
