 call s1
 print *,'pass'
 end
   character(2) function y2()
     y2='ab'
   end function
 subroutine s1
  call ss1(5)
  call ss2(5)
end
 subroutine ss1(j)
   integer,dimension(j)::i
   if (any(wwe(j=4)))print *,'fail'
  contains
   function wwe(j) 
   logical,dimension(2)::wwe
   integer,parameter,dimension(2,2)::q3=3
   integer,dimension(j)::i
   wwe=.false.
   if (size(i)/=4)print *,'fail'
   if (any(af1(x1=q3)/='12'))print *,'fail'
   if (any(shape(af1(x1=q3))/=(/5,5/)))print *,'fail'
   end function
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
 end
module m0
 integer,dimension(5)::i
end
 subroutine ss2(j)
         interface 
   function wwe(j) 
         interface 
    function af1(x1,x2) result(ar)
      use m0
     integer,dimension(:,:),optional::x1
     character(2):: ar(size(i),size(i))
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
   end function
         end interface
   logical,dimension(2)::wwe
   integer,parameter,dimension(2,2)::q3=3
   end function
         end interface
   if (any(wwe(j=4)))print *,'fail'
   kk=j
 end
   function wwe(j) 
      use m0
         interface 
    function af1(x1,x2) result(ar)
      use m0
     integer,dimension(:,:),optional::x1
     character(2):: ar(size(i),size(i))
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
   end function
         end interface
   logical,dimension(2)::wwe
   integer,parameter,dimension(2,2)::q3=3
   wwe=.false.
   kk=j
   if (size(i)/=5)print *,'fail'
   if (any(af1(x1=q3)/='12'))print *,'fail'
   if (any(shape(af1(x1=q3))/=(/5,5/)))print *,'fail'
   end function
    function af1(x1,x2) result(ar)
      use m0
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
