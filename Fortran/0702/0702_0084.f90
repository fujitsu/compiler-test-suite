 call s1
 print *,'pass'
 end
 subroutine s1
   call ss1
   call ss2
 end
 subroutine ss1
   i=4
   if (any(af1(3)/='123'))print *,'fail'
   if (any(af1(i)/='1234'))print *,'fail'
   if (any(shape(af1(i))/=(/2,2/)))print *,'fail'
   if (any(af2(3)/='123'))print *,'fail'
   if (any(af2(i)/='1234'))print *,'fail'
   if (any(shape(af2(i))/=(/4,4/)))print *,'fail'
   if (any(af3(3)/='12'))print *,'fail'
   if (any(af3(i)/='12'))print *,'fail'
   if (any(shape(af3(3))/=(/3,3/)))print *,'fail'
   if (any(shape(af3(i))/=(/4,4/)))print *,'fail'
  contains
    function af1(i) result(ar)
     character(i):: ar(2,2)
     ar='12345'
    end function
    function af2(i) result(ar)
     character(i):: ar(i,i)
     ar='12345'
    end function
    function af3(i) result(ar)
     character(2):: ar(i,i)
     ar='12345'
    end function
end 
 subroutine ss2
    interface
    function af1(i) result(ar)
     character(i):: ar(2,2)
    end function
    function af2(i) result(ar)
     character(i):: ar(i,i)
    end function
    function af3(i) result(ar)
     character(2):: ar(i,i)
    end function
    end interface
   i=4
   if (any(af1(3)/='123'))print *,'fail'
   if (any(af1(i)/='1234'))print *,'fail'
   if (any(shape(af1(i))/=(/2,2/)))print *,'fail'
   if (any(af2(3)/='123'))print *,'fail'
   if (any(af2(i)/='1234'))print *,'fail'
   if (any(shape(af2(i))/=(/4,4/)))print *,'fail'
   if (any(af3(3)/='12'))print *,'fail'
   if (any(af3(i)/='12'))print *,'fail'
   if (any(shape(af3(3))/=(/3,3/)))print *,'fail'
   if (any(shape(af3(i))/=(/4,4/)))print *,'fail'
 end       
    function af1(i) result(ar)
     character(i):: ar(2,2)
     ar='12345'
    end function
    function af2(i) result(ar)
     character(i):: ar(i,i)
     ar='12345'
    end function
    function af3(i) result(ar)
     character(2):: ar(i,i)
     ar='12345'
    end function
