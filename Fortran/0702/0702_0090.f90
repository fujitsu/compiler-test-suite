 call s1
 print *,'pass'
 end
subroutine s1
  call ss1
  call ss2
end
 subroutine ss1
   j=2
   if (any(wwe(j=2)))print *,'fail'
 contains
   function wwe(j) 
   logical,dimension(2)::wwe
   integer,parameter,dimension(3)::q3=3
    k=j
   wwe=.false.
   if (any(af1(i=q3)/='12'))print *,'fail'
   if (any(shape(af1(i=q3))/=(/2,2/)))print *,'fail'
   end function
    function af1(i,x1,x2) result(ar)
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
   character(2) function y2()
     y2='ab'
   end function
 end
 module xx
  integer::j=2
 end
 subroutine ss2
   interface
   function wwe(j) 
   logical,dimension(2)::wwe
   integer,parameter,dimension(3)::q3=3
   end function
   end interface
   if (any(wwe(j=2)))print *,'fail'
 end     
   function wwe(j) 
   logical,dimension(2)::wwe
interface
    function af1(i,x1,x2) result(ar)
  use xx
     integer,dimension(:,:),optional::x1
     integer,dimension(j)::i
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
     character(2):: ar(size(i),size(i))
    end function
   end interface
   integer,parameter,dimension(3)::q3=3
    k=j
   wwe=.false.
   if (any(af1(i=q3)/='12'))print *,'fail'
   if (any(shape(af1(i=q3))/=(/2,2/)))print *,'fail'
   end function
    function af1(i,x1,x2) result(ar)
  use xx
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
   character(2) function y2()
     y2='ab'
   end function
