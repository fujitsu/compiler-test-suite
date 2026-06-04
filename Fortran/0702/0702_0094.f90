 call s1
 print *,'pass'
 end
subroutine s1
call ss1
call ss2
end
   character(2) function y2()
     y2='ab'
   end function
 subroutine ss1
   if (any(wwe()))print *,'fail'
  contains
   function wwe() 
   logical,dimension(2)::wwe
   integer,parameter,dimension(3)::q3=3
   wwe=.false.
   j=2
   if (any(af1(i=q3,j=2)/='12'))print *,'fail'
   if (any(shape(af1(i=q3,j=2))/=(/2,2/)))print *,'fail'
   end function
    function af1(i,x1,x2,j) result(ar)
     integer,dimension(:,:),optional::x1
     integer,dimension(j)::i
     character(2):: ar(size(i),size(i))
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
     ar='12345'
     if (present(x2))ar=x2()
    end function
 end
 subroutine ss2
         interface 
   function wwe() 
   logical,dimension(2)::wwe
   integer,parameter,dimension(3)::q3=3
    end function
         end interface
   if (any(wwe()))print *,'fail'
end
   function wwe() 
   logical,dimension(2)::wwe
         interface 
    function af1(i,x1,x2,j) result(ar)
     integer,dimension(:,:),optional::x1
     integer,dimension(j)::i
     character(2):: ar(size(i),size(i))
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
            end function
         end interface
   integer,parameter,dimension(3)::q3=3
   wwe=.false.
   j=2
   if (any(af1(i=q3,j=2)/='12'))print *,'fail'
   if (any(shape(af1(i=q3,j=2))/=(/2,2/)))print *,'fail'
   end function
    function af1(i,x1,x2,j) result(ar)
     integer,dimension(:,:),optional::x1
     integer,dimension(j)::i
     character(2):: ar(size(i),size(i))
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
     ar='12345'
     if (present(x2))ar=x2()
    end function
