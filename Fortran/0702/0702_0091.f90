 call s1
 print *,'pass'
 end
 subroutine s1
  call ss1
  call ss2
 end
 subroutine ss1
     common j
     j=2
   if (any(wwe()))print *,'fail'
  contains
   function wwe() 
   logical,dimension(2)::wwe
   integer,parameter,dimension(3)::q3=3
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
     common j
     ar='12345'
     if (present(x2))ar=x2()
    end function
   end
 subroutine ss2
     common j
       interface
   function wwe() 
   logical,dimension(2)::wwe
   integer,parameter,dimension(3)::q3=3
    end function
       end interface
     j=2
   if (any(wwe()))print *,'fail'
 end      
   function wwe() 
   logical,dimension(2)::wwe
   integer,parameter,dimension(3)::q3=3
       interface
    function af1(i,x1,x2) result(ar)
     integer,dimension(:,:),optional::x1
     integer,dimension(j)::i
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
     character(2):: ar(size(i),size(i))
     common j
    end function
       end interface
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
     common j
     ar='12345'
     if (present(x2))ar=x2()
    end function
