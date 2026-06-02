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
   character*2,external::y2
   i=4
   if (any(af1(i=3)/='123'))print *,'fail'
   if (any(af1(i=i)/='1234'))print *,'fail'
   if (any(shape(af1(i=i))/=(/2,2/)))print *,'fail'
   if (any(af2(i=3)/='123'))print *,'fail'
   if (any(af2(i=i)/='1234'))print *,'fail'
   if (any(shape(af2(i=i))/=(/4,4/)))print *,'fail'
   if (any(af3(i=3)/='12'))print *,'fail'
   if (any(af3(i=i)/='12'))print *,'fail'
   if (any(shape(af3(i=3))/=(/3,3/)))print *,'fail'
   if (any(shape(af3(i=i))/=(/4,4/)))print *,'fail'
   if (any(af1(i=3,x2=y2)/='ab'))print *,'fail'
   if (any(af1(i=i,x2=y2)/='ab'))print *,'fail'
   if (any(shape(af1(i=i,x2=y2))/=(/2,2/)))print *,'fail'
   if (any(af2(i=3,x2=y2)/='ab'))print *,'fail'
   if (any(af2(i=i,x2=y2)/='ab'))print *,'fail'
   if (any(shape(af2(i=i,x2=y2))/=(/4,4/)))print *,'fail'
   if (any(af3(i=3,x2=y2)/='ab'))print *,'fail'
   if (any(af3(i=i,x2=y2)/='ab'))print *,'fail'
   if (any(shape(af3(i=3,x2=y2))/=(/3,3/)))print *,'fail'
   if (any(shape(af3(i=i,x2=y2))/=(/4,4/)))print *,'fail'
   if (any(bf1(i=3,x2=y2)/='ab'))print *,'fail'
   if (any(bf1(i=i,x2=y2)/='ab'))print *,'fail'
   if (any(shape(bf1(i=i,x2=y2))/=(/2,2/)))print *,'fail'
   if (any(bf2(i=3,x2=y2)/='ab'))print *,'fail'
   if (any(bf2(i=i,x2=y2)/='ab'))print *,'fail'
   if (any(shape(bf2(i=i,x2=y2))/=(/4,4/)))print *,'fail'
   if (any(bf3(i=3,x2=y2)/='ab'))print *,'fail'
   if (any(bf3(i=i,x2=y2)/='ab'))print *,'fail'
   if (any(shape(bf3(i=3,x2=y2))/=(/3,3/)))print *,'fail'
   if (any(shape(bf3(i=i,x2=y2))/=(/4,4/)))print *,'fail'
  contains
    function af1(x1,x2,i) result(ar)
     integer,dimension(:,:),optional::x1
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
     character(i):: ar(2,2)
     ar='12345'
     if (present(x2))ar=x2()
    end function
    function af2(x1,x2,i) result(ar)
     integer,dimension(:,:),optional::x1
     character(i):: ar(i,i)
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
     ar='12345'
     if (present(x2))ar=x2()
    end function
    function af3(x1,x2,i) result(ar)
     character(2):: ar(i,i)
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
     character(i):: ar(2,2)
     ar='12345'
     if (.not.present(x1))ar=x2()
    end function
    function bf2(x1,x2,i) result(ar)
     integer,dimension(:,:),optional::x1
     character(i):: ar(i,i)
         interface 
            character(2) function x2()
            end function
         end interface
     ar='12345'
     if (.not.present(x1))ar=x2()
    end function
    function bf3(x1,x2,i) result(ar)
     character(2):: ar(i,i)
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
  interface
    function af1(x1,x2,i) result(ar)
     integer,dimension(:,:),optional::x1
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
     character(i):: ar(2,2)
    end function
    function af2(x1,x2,i) result(ar)
     integer,dimension(:,:),optional::x1
     character(i):: ar(i,i)
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
    end function
    function af3(x1,x2,i) result(ar)
     character(2):: ar(i,i)
         optional :: x2
         interface 
            character(2) function x2()
            end function
         end interface
     integer,dimension(:,:),optional::x1
    end function
    function bf1(x1,x2,i) result(ar)
     integer,dimension(:,:),optional::x1
         interface 
            character(2) function x2()
            end function
         end interface
     character(i):: ar(2,2)
    end function
    function bf2(x1,x2,i) result(ar)
     integer,dimension(:,:),optional::x1
     character(i):: ar(i,i)
         interface 
            character(2) function x2()
            end function
         end interface
    end function
    function bf3(x1,x2,i) result(ar)
     character(2):: ar(i,i)
         interface 
            character(2) function x2()
            end function
         end interface
     integer,dimension(:,:),optional::x1
    end function
end interface
   character*2,external::y2
   i=4
   if (any(af1(i=3)/='123'))print *,'fail'
   if (any(af1(i=i)/='1234'))print *,'fail'
   if (any(shape(af1(i=i))/=(/2,2/)))print *,'fail'
   if (any(af2(i=3)/='123'))print *,'fail'
   if (any(af2(i=i)/='1234'))print *,'fail'
   if (any(shape(af2(i=i))/=(/4,4/)))print *,'fail'
   if (any(af3(i=3)/='12'))print *,'fail'
   if (any(af3(i=i)/='12'))print *,'fail'
   if (any(shape(af3(i=3))/=(/3,3/)))print *,'fail'
   if (any(shape(af3(i=i))/=(/4,4/)))print *,'fail'
   if (any(af1(i=3,x2=y2)/='ab'))print *,'fail'
   if (any(af1(i=i,x2=y2)/='ab'))print *,'fail'
   if (any(shape(af1(i=i,x2=y2))/=(/2,2/)))print *,'fail'
   if (any(af2(i=3,x2=y2)/='ab'))print *,'fail'
   if (any(af2(i=i,x2=y2)/='ab'))print *,'fail'
   if (any(shape(af2(i=i,x2=y2))/=(/4,4/)))print *,'fail'
   if (any(af3(i=3,x2=y2)/='ab'))print *,'fail'
   if (any(af3(i=i,x2=y2)/='ab'))print *,'fail'
   if (any(shape(af3(i=3,x2=y2))/=(/3,3/)))print *,'fail'
   if (any(shape(af3(i=i,x2=y2))/=(/4,4/)))print *,'fail'
   if (any(bf1(i=3,x2=y2)/='ab'))print *,'fail'
   if (any(bf1(i=i,x2=y2)/='ab'))print *,'fail'
   if (any(shape(bf1(i=i,x2=y2))/=(/2,2/)))print *,'fail'
   if (any(bf2(i=3,x2=y2)/='ab'))print *,'fail'
   if (any(bf2(i=i,x2=y2)/='ab'))print *,'fail'
   if (any(shape(bf2(i=i,x2=y2))/=(/4,4/)))print *,'fail'
   if (any(bf3(i=3,x2=y2)/='ab'))print *,'fail'
   if (any(bf3(i=i,x2=y2)/='ab'))print *,'fail'
   if (any(shape(bf3(i=3,x2=y2))/=(/3,3/)))print *,'fail'
   if (any(shape(bf3(i=i,x2=y2))/=(/4,4/)))print *,'fail'
end
    function af1(x1,x2,i) result(ar)
     integer,dimension(:,:),optional::x1
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
     character(i):: ar(2,2)
     ar='12345'
     if (present(x2))ar=x2()
    end function
    function af2(x1,x2,i) result(ar)
     integer,dimension(:,:),optional::x1
     character(i):: ar(i,i)
         interface 
            character(2) function x2()
            end function
         end interface
         optional :: x2
     ar='12345'
     if (present(x2))ar=x2()
    end function
    function af3(x1,x2,i) result(ar)
     character(2):: ar(i,i)
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
     character(i):: ar(2,2)
     ar='12345'
     if (.not.present(x1))ar=x2()
    end function
    function bf2(x1,x2,i) result(ar)
     integer,dimension(:,:),optional::x1
     character(i):: ar(i,i)
         interface 
            character(2) function x2()
            end function
         end interface
     ar='12345'
     if (.not.present(x1))ar=x2()
    end function
    function bf3(x1,x2,i) result(ar)
     character(2):: ar(i,i)
         interface 
            character(2) function x2()
            end function
         end interface
     integer,dimension(:,:),optional::x1
     ar='12345'
     if (.not.present(x1))ar=x2()
    end function
