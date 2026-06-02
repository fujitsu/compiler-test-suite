 call s1
 print *,'pass'
 end
   character(2) function y2()
     y2='ab'
   end function
 subroutine s1
  call ss1
  call ss2
 end
 subroutine ss1
   external y2
   character*2 y2
   j=3
   if (any(wwe(j=3)))print *,'fail'
   contains
   function wwe(j) 
   logical,dimension(2)::wwe
   integer,parameter,dimension(3)::q3=3
   wwe=.false.
   k=j
   if (any(af1(i=q3)/='12'))print *,'fail'
   if (any(af1(i=i(q3))/='12'))print *,'fail'
   if (any(shape(af1(i=i(q3)))/=(/3,3/)))print *,'fail'
   if (any(af2(i=q3)/='12'))print *,'fail'
   if (any(af2(i=i(q3))/='12'))print *,'fail'
   if (any(shape(af2(i=i(q3)))/=(/3,3/)))print *,'fail'
   if (any(af3(i=q3)/='12'))print *,'fail'
   if (any(af3(i=i(q3))/='12'))print *,'fail'
   if (any(shape(af3(i=q3))/=(/3,3/)))print *,'fail'
   if (any(shape(af3(i=i(q3)))/=(/3,3/)))print *,'fail'
   if (any(af1(i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(af1(i=i(q3),x2=y2)/='ab'))print *,'fail'
   if (any(shape(af1(i=i(q3),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(af2(i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(af2(i=i(q3),x2=y2)/='ab'))print *,'fail'
   if (any(shape(af2(i=i(q3),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(af3(i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(af3(i=i(q3),x2=y2)/='ab'))print *,'fail'
   if (any(shape(af3(i=q3,x2=y2))/=(/3,3/)))print *,'fail'
   if (any(shape(af3(i=i(q3),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(bf1(i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(bf1(i=i(q3),x2=y2)/='ab'))print *,'fail'
   if (any(shape(bf1(i=i(q3),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(bf2(i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(bf2(i=i(q3),x2=y2)/='ab'))print *,'fail'
   if (any(shape(bf2(i=i(q3),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(bf3(i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(bf3(i=i(q3),x2=y2)/='ab'))print *,'fail'
   if (any(shape(bf3(i=q3,x2=y2))/=(/3,3/)))print *,'fail'
   if (any(shape(bf3(i=i(q3),x2=y2))/=(/3,3/)))print *,'fail'
end function
    function af1(x1,x2,i) result(ar)
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
    function af2(x1,x2,i) result(ar)
     integer,dimension(:,:),optional::x1
     integer,dimension(j)::i
     character(2):: ar(size(i,1),size(i,1))
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
     ar='12345'
     if (present(x2))ar=x2()
    end function
    function af3(x1,x2,i) result(ar)
     integer,dimension(j)::i
     character(2):: ar(1+size(i)-1,1+size(i)-1)
         optional :: x2
         interface 
            character(2) function x2()
            end function
         end interface
     integer,dimension(:,:),optional::x1
     ar='12345'
     if (present(x2))ar=x2()
    end function
    function bf1(x1,x2,i) result(ar)
     integer,dimension(:,:),optional::x1
         interface 
            character(2) function x2()
            end function
         end interface
     integer,dimension(j)::i
     character(2):: ar(size(i),size(i))
     ar='12345'
     if (.not.present(x1))ar=x2()
    end function
    function bf2(x1,x2,i) result(ar)
     integer,dimension(:,:),optional::x1
     integer,dimension(j)::i
     character(2):: ar(size(i,1),size(i,1))
         interface 
            character(2) function x2()
            end function
         end interface
     ar='12345'
     if (.not.present(x1))ar=x2()
    end function
    function bf3(x1,x2,i) result(ar)
     integer,dimension(j)::i
     character(2):: ar(size(i,1),size(i,1))
         interface 
            character(2) function x2()
            end function
         end interface
     integer,dimension(:,:),optional::x1
     ar='12345'
     if (.not.present(x1))ar=x2()
    end function
    function i(ii)
      integer,dimension(:)::ii
      integer,dimension(size(ii))::i
      i=ii
    end function
   end subroutine

 subroutine ss2
   external y2
   character*2 y2
interface
   function wwe(j) 
   logical,dimension(2)::wwe
   integer,parameter,dimension(3)::q3=3
   end function
endinterface
   common /jk/j
   j=3
   if (any(wwe(j=3)))print *,'fail'
end
   function wwe(j) 
   logical,dimension(2)::wwe
   integer,parameter,dimension(3)::q3=3
interface
    function af1(x1,x2,i) result(ar)
   common /jk/j
     integer,dimension(:,:),optional::x1
     integer,dimension(j)::i
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
     character(2):: ar(size(i),size(i))
    end function
    function af2(x1,x2,i) result(ar)
   common /jk/j
     integer,dimension(:,:),optional::x1
     integer,dimension(j)::i
     character(2):: ar(size(i,1),size(i,1))
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
    end function
    function af3(x1,x2,i) result(ar)
   common /jk/j
     integer,dimension(j)::i
     character(2):: ar(1+size(i)-1,1+size(i)-1)
         optional :: x2
         interface 
            character(2) function x2()
            end function
         end interface
     integer,dimension(:,:),optional::x1
    end function
    function bf1(x1,x2,i) result(ar)
   common /jk/j
     integer,dimension(:,:),optional::x1
         interface 
            character(2) function x2()
            end function
         end interface
     integer,dimension(j)::i
     character(2):: ar(size(i),size(i))
    end function
    function bf2(x1,x2,i) result(ar)
   common /jk/j
     integer,dimension(:,:),optional::x1
     integer,dimension(j)::i
     character(2):: ar(size(i,1),size(i,1))
         interface 
            character(2) function x2()
            end function
         end interface
    end function
    function bf3(x1,x2,i) result(ar)
     integer,dimension(j)::i
     character(2):: ar(size(i,1),size(i,1))
   common /jk/j
         interface 
            character(2) function x2()
            end function
         end interface
     integer,dimension(:,:),optional::x1
    end function
    function i(ii)
      integer,dimension(:)::ii
      integer,dimension(size(ii))::i
    end function
end interface
   external y2
   character*2 y2
   wwe=.false.
   k=j
   if (any(af1(i=q3)/='12'))print *,'fail'
   if (any(af1(i=i(q3))/='12'))print *,'fail'
   if (any(shape(af1(i=i(q3)))/=(/3,3/)))print *,'fail'
   if (any(af2(i=q3)/='12'))print *,'fail'
   if (any(af2(i=i(q3))/='12'))print *,'fail'
   if (any(shape(af2(i=i(q3)))/=(/3,3/)))print *,'fail'
   if (any(af3(i=q3)/='12'))print *,'fail'
   if (any(af3(i=i(q3))/='12'))print *,'fail'
   if (any(shape(af3(i=q3))/=(/3,3/)))print *,'fail'
   if (any(shape(af3(i=i(q3)))/=(/3,3/)))print *,'fail'
   if (any(af1(i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(af1(i=i(q3),x2=y2)/='ab'))print *,'fail'
   if (any(shape(af1(i=i(q3),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(af2(i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(af2(i=i(q3),x2=y2)/='ab'))print *,'fail'
   if (any(shape(af2(i=i(q3),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(af3(i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(af3(i=i(q3),x2=y2)/='ab'))print *,'fail'
   if (any(shape(af3(i=q3,x2=y2))/=(/3,3/)))print *,'fail'
   if (any(shape(af3(i=i(q3),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(bf1(i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(bf1(i=i(q3),x2=y2)/='ab'))print *,'fail'
   if (any(shape(bf1(i=i(q3),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(bf2(i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(bf2(i=i(q3),x2=y2)/='ab'))print *,'fail'
   if (any(shape(bf2(i=i(q3),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(bf3(i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(bf3(i=i(q3),x2=y2)/='ab'))print *,'fail'
   if (any(shape(bf3(i=q3,x2=y2))/=(/3,3/)))print *,'fail'
   if (any(shape(bf3(i=i(q3),x2=y2))/=(/3,3/)))print *,'fail'
end function
    function af1(x1,x2,i) result(ar)
   common /jk/j
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
    function af2(x1,x2,i) result(ar)
     integer,dimension(:,:),optional::x1
     integer,dimension(j)::i
     character(2):: ar(size(i,1),size(i,1))
   common /jk/j
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
     ar='12345'
     if (present(x2))ar=x2()
    end function
    function af3(x1,x2,i) result(ar)
     integer,dimension(j)::i
     character(2):: ar(1+size(i)-1,1+size(i)-1)
   common /jk/j
         optional :: x2
         interface 
            character(2) function x2()
            end function
         end interface
     integer,dimension(:,:),optional::x1
     ar='12345'
     if (present(x2))ar=x2()
    end function
    function bf1(x1,x2,i) result(ar)
     integer,dimension(:,:),optional::x1
   common /jk/j
         interface 
            character(2) function x2()
            end function
         end interface
     integer,dimension(j)::i
     character(2):: ar(size(i),size(i))
     ar='12345'
     if (.not.present(x1))ar=x2()
    end function
    function bf2(x1,x2,i) result(ar)
     integer,dimension(:,:),optional::x1
   common /jk/j
     integer,dimension(j)::i
     character(2):: ar(size(i,1),size(i,1))
         interface 
            character(2) function x2()
            end function
         end interface
     ar='12345'
     if (.not.present(x1))ar=x2()
    end function
    function bf3(x1,x2,i) result(ar)
     integer,dimension(j)::i
   common /jk/j
     character(2):: ar(size(i,1),size(i,1))
         interface 
            character(2) function x2()
            end function
         end interface
     integer,dimension(:,:),optional::x1
     ar='12345'
     if (.not.present(x1))ar=x2()
    end function
    function i(ii)
      integer,dimension(:)::ii
      integer,dimension(size(ii))::i
      i=ii
    end function
