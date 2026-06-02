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
   character,external::y2
   integer,parameter,dimension(3)::q3=3
   if (any(af1(j=size(q3),i=q3)/='12'))print *,'fail'
   if (any(af1(i=i(q3),j=size(i(q3)))/='12'))print *,'fail'
   if (any(shape(af1(i=i(q3),j=size(i(q3))))/=(/3,3/)))print *,'fail'
   if (any(af2(j=size(q3),i=q3)/='12'))print *,'fail'
   if (any(af2(i=i(q3),j=size(i(q3)))/='12'))print *,'fail'
   if (any(shape(af2(i=i(q3),j=size(i(q3))))/=(/3,3/)))print *,'fail'
   if (any(af3(j=size(q3),i=q3)/='12'))print *,'fail'
   if (any(af3(i=i(q3),j=size(i(q3)))/='12'))print *,'fail'
   if (any(shape(af3(j=size(q3),i=q3))/=(/3,3/)))print *,'fail'
   if (any(shape(af3(i=i(q3),j=size(i(q3))))/=(/3,3/)))print *,'fail'
   if (any(af1(j=size(q3),i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(af1(i=i(q3),j=size(i(q3)),x2=y2)/='ab'))print *,'fail'
   if (any(shape(af1(i=i(q3),j=size(i(q3)),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(af2(j=size(q3),i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(af2(i=i(q3),j=size(i(q3)),x2=y2)/='ab'))print *,'fail'
   if (any(shape(af2(i=i(q3),j=size(i(q3)),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(af3(j=size(q3),i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(af3(i=i(q3),j=size(i(q3)),x2=y2)/='ab'))print *,'fail'
   if (any(shape(af3(j=size(q3),i=q3,x2=y2))/=(/3,3/)))print *,'fail'
   if (any(shape(af3(i=i(q3),j=size(i(q3)),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(bf1(j=size(q3),i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(bf1(i=i(q3),j=size(i(q3)),x2=y2)/='ab'))print *,'fail'
   if (any(shape(bf1(i=i(q3),j=size(i(q3)),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(bf2(j=size(q3),i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(bf2(i=i(q3),j=size(i(q3)),x2=y2)/='ab'))print *,'fail'
   if (any(shape(bf2(i=i(q3),j=size(i(q3)),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(bf3(j=size(q3),i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(bf3(i=i(q3),j=size(i(q3)),x2=y2)/='ab'))print *,'fail'
   if (any(shape(bf3(j=size(q3),i=q3,x2=y2))/=(/3,3/)))print *,'fail'
   if (any(shape(bf3(i=i(q3),j=size(i(q3)),x2=y2))/=(/3,3/)))print *,'fail'
   contains
    function i(ii)
      integer,dimension(:)::ii
      integer,dimension(size(ii))::i
      i=ii
    end function
    function af1(x1,x2,i,j) result(ar)
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
    function af2(x1,x2,i,j) result(ar)
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
    function af3(x1,x2,i,j) result(ar)
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
    function bf1(x1,x2,i,j) result(ar)
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
    function bf2(x1,x2,i,j) result(ar)
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
    function bf3(x1,x2,i,j) result(ar)
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
end 
 subroutine ss2
   character,external::y2
interface
    function i(ii)
      integer,dimension(:)::ii
      integer,dimension(size(ii))::i
    end function
    function af1(x1,x2,i,j) result(ar)
     integer,dimension(:,:),optional::x1
     integer,dimension(j)::i
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
     character(2):: ar(size(i),size(i))
    end function
    function af2(x1,x2,i,j) result(ar)
     integer,dimension(:,:),optional::x1
     integer,dimension(j)::i
     character(2):: ar(size(i,1),size(i,1))
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
    end function
    function af3(x1,x2,i,j) result(ar)
     integer,dimension(j)::i
     character(2):: ar(1+size(i)-1,1+size(i)-1)
         optional :: x2
         interface 
            character(2) function x2()
            end function
         end interface
     integer,dimension(:,:),optional::x1
    end function
    function bf1(x1,x2,i,j) result(ar)
     integer,dimension(:,:),optional::x1
         interface 
            character(2) function x2()
            end function
         end interface
     integer,dimension(j)::i
     character(2):: ar(size(i),size(i))
    end function
    function bf2(x1,x2,i,j) result(ar)
     integer,dimension(:,:),optional::x1
     integer,dimension(j)::i
     character(2):: ar(size(i,1),size(i,1))
         interface 
            character(2) function x2()
            end function
         end interface
    end function
    function bf3(x1,x2,i,j) result(ar)
     integer,dimension(j)::i
     character(2):: ar(size(i,1),size(i,1))
         interface 
            character(2) function x2()
            end function
         end interface
     integer,dimension(:,:),optional::x1
    end function
end interface
   integer,parameter,dimension(3)::q3=3
   if (any(af1(j=size(q3),i=q3)/='12'))print *,'fail'
   if (any(af1(i=i(q3),j=size(i(q3)))/='12'))print *,'fail'
   if (any(shape(af1(i=i(q3),j=size(i(q3))))/=(/3,3/)))print *,'fail'
   if (any(af2(j=size(q3),i=q3)/='12'))print *,'fail'
   if (any(af2(i=i(q3),j=size(i(q3)))/='12'))print *,'fail'
   if (any(shape(af2(i=i(q3),j=size(i(q3))))/=(/3,3/)))print *,'fail'
   if (any(af3(j=size(q3),i=q3)/='12'))print *,'fail'
   if (any(af3(i=i(q3),j=size(i(q3)))/='12'))print *,'fail'
   if (any(shape(af3(j=size(q3),i=q3))/=(/3,3/)))print *,'fail'
   if (any(shape(af3(i=i(q3),j=size(i(q3))))/=(/3,3/)))print *,'fail'
   if (any(af1(j=size(q3),i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(af1(i=i(q3),j=size(i(q3)),x2=y2)/='ab'))print *,'fail'
   if (any(shape(af1(i=i(q3),j=size(i(q3)),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(af2(j=size(q3),i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(af2(i=i(q3),j=size(i(q3)),x2=y2)/='ab'))print *,'fail'
   if (any(shape(af2(i=i(q3),j=size(i(q3)),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(af3(j=size(q3),i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(af3(i=i(q3),j=size(i(q3)),x2=y2)/='ab'))print *,'fail'
   if (any(shape(af3(j=size(q3),i=q3,x2=y2))/=(/3,3/)))print *,'fail'
   if (any(shape(af3(i=i(q3),j=size(i(q3)),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(bf1(j=size(q3),i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(bf1(i=i(q3),j=size(i(q3)),x2=y2)/='ab'))print *,'fail'
   if (any(shape(bf1(i=i(q3),j=size(i(q3)),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(bf2(j=size(q3),i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(bf2(i=i(q3),j=size(i(q3)),x2=y2)/='ab'))print *,'fail'
   if (any(shape(bf2(i=i(q3),j=size(i(q3)),x2=y2))/=(/3,3/)))print *,'fail'
   if (any(bf3(j=size(q3),i=q3,x2=y2)/='ab'))print *,'fail'
   if (any(bf3(i=i(q3),j=size(i(q3)),x2=y2)/='ab'))print *,'fail'
   if (any(shape(bf3(j=size(q3),i=q3,x2=y2))/=(/3,3/)))print *,'fail'
   if (any(shape(bf3(i=i(q3),j=size(i(q3)),x2=y2))/=(/3,3/)))print *,'fail'
  end
    function i(ii)
      integer,dimension(:)::ii
      integer,dimension(size(ii))::i
      i=ii
    end function
    function af1(x1,x2,i,j) result(ar)
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
    function af2(x1,x2,i,j) result(ar)
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
    function af3(x1,x2,i,j) result(ar)
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
    function bf1(x1,x2,i,j) result(ar)
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
    function bf2(x1,x2,i,j) result(ar)
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
    function bf3(x1,x2,i,j) result(ar)
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
