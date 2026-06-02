 call s1
 print *,'pass'
 end
 subroutine s1
 interface
   function wwe(i) 
   logical,dimension(2)::wwe
   integer,parameter,dimension(2,2)::q3=3
   end function
 end interface
   if (any(wwe(i=5)))print *,'fail'
end 
 module m0
 integer ::i=5
 end
   character(2) function y2()
     y2='ab'
   end function
   function wwe(i) 
   logical,dimension(2)::wwe
   integer,parameter,dimension(2,2)::q3=3
 interface
    function af1(x1,x2) result(ar)
     use m0
     integer,dimension(:,:),optional::x1
     character(2):: ar(i,(i))
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
   end function
 end interface
   if (i/=5)print *,'fail'
   wwe=.false.
   if (any(af1(x1=q3)/='12'))print *,'fail'
   if (any(shape(af1(x1=q3))/=(/5,5/)))print *,'fail'
   end function
    function af1(x1,x2) result(ar)
     use m0
     integer,dimension(:,:),optional::x1
     character(2):: ar(i,(i))
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
     ar='12345'
     if (present(x2))ar=x2()
    end function
