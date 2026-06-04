 call s1
 print *,'pass'
 end
 module m1
  contains
   function wwe(j) 
   logical,dimension(2)::wwe
   integer,parameter,dimension(2,2)::q3=3
   integer,dimension(j)::i
   wwe=.false.
   if (any(af1(x1=q3)/='12'))print *,'fail'
   if (any(shape(af1(x1=q3))/=(/5,5/)))print *,'fail'
  contains
    function af1(x1,x2) result(ar)
     integer,dimension(:,:),optional::x1
     character(2):: ar(size(i),size(i))
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
     ar='12345'
     if (present(x2))ar=x2()
    end function
   end function
   character(2) function y2()
     y2='ab'
   end function
 end
 subroutine s1
   use m1
   if (any(wwe(j=5)))print *,'fail'
end 
