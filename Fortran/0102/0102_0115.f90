program calling_func
interface
function get_val()
   integer,parameter ::x(5) = [1,9,45,45,9]
   integer :: get_val(1)
end function
end interface
   integer :: k(1)
   k = get_val()   
   if(k(1).eq.4)then
     print*,"PASS"
   else
     print*,"FAIL"
   end if
end program calling_func


function get_val()

   integer,parameter ::x(5) = [1,9,45,45,9]
   integer::get_val(1)
   integer,parameter ::get_val1(1)=maxloc(x,back=.true.)
   get_val=get_val1
end function get_val


