 call s1
 print *,'pass'
 end
 module m0
  integer ::j=2
 end
 module m1
  contains
   function wwe() 
   logical,dimension(2)::wwe
   integer,parameter,dimension(3)::q3=3
   wwe=.false.
   j=2
   if (any(af1(i=q3)/='12'))print *,'fail'
   if (any(shape(af1(i=q3))/=(/2,2/)))print *,'fail'
  contains
    function af1(i,x1,x2) result(ar)
     use m0
     integer,dimension(:,:),optional::x1
     integer,dimension(j)::i
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
     character(2):: ar(size(i),size(i))
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
   if (any(wwe()))print *,'fail'
end 
