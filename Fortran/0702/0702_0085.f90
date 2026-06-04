 call s1
 print *,'pass'
 end
  module m1
   type ax
     character*2 az
   end type
    interface operator(/=)
      module procedure ww
    end interface
  contains
    function ww(a1,a2) result(ar)
     type(ax),dimension(:,:),intent(in)::a1
     character*(*),intent(in)::a2
     logical,dimension(size(a1,1),size(a1,2))::ar
     ar=a1%az/=a2
    end function
  end
 subroutine s1
  call ss1
  call ss2
 end
 subroutine ss1
   use m1
   i=4
   if (any(af1(3)/='12'))print *,'fail'
   if (any(af1(i)/='12'))print *,'fail'
   if (any(shape(af1(i))/=(/2,2/)))print *,'fail'
   if (any(af2(3)/='12'))print *,'fail'
   if (any(af2(i)/='12'))print *,'fail'
   if (any(shape(af2(i))/=(/4,4/)))print *,'fail'
   if (any(af3(3)/='12'))print *,'fail'
   if (any(af3(i)/='12'))print *,'fail'
   if (any(shape(af3(3))/=(/3,3/)))print *,'fail'
   if (any(shape(af3(i))/=(/4,4/)))print *,'fail'
  contains
    function af1(i) result(ar)
     type(ax):: ar(2,2)
     ar%az(:min(i,len(ar%az)))='12345'
    end function
    function af2(i) result(ar)
     type(ax):: ar(i,i)
     ar%az='12345'
    end function
    function af3(i) result(ar)
     type(ax):: ar(i,i)
     ar%az='12345'
    end function
end 
 subroutine ss2
   use m1
   interface
    function af1(i) result(ar)
   use m1
     type(ax):: ar(2,2)
    end function
    function af2(i) result(ar)
   use m1
     type(ax):: ar(i,i)
    end function
    function af3(i) result(ar)
   use m1
     type(ax):: ar(i,i)
    end function
   end interface
   i=4
   if (any(af1(3)/='12'))print *,'fail'
   if (any(af1(i)/='12'))print *,'fail'
   if (any(shape(af1(i))/=(/2,2/)))print *,'fail'
   if (any(af2(3)/='12'))print *,'fail'
   if (any(af2(i)/='12'))print *,'fail'
   if (any(shape(af2(i))/=(/4,4/)))print *,'fail'
   if (any(af3(3)/='12'))print *,'fail'
   if (any(af3(i)/='12'))print *,'fail'
   if (any(shape(af3(3))/=(/3,3/)))print *,'fail'
   if (any(shape(af3(i))/=(/4,4/)))print *,'fail'
end       
    function af1(i) result(ar)
   use m1
     type(ax):: ar(2,2)
     ar%az(:min(i,len(ar%az)))='12345'
    end function
    function af2(i) result(ar)
   use m1
     type(ax):: ar(i,i)
     ar%az='12345'
    end function
    function af3(i) result(ar)
   use m1
     type(ax):: ar(i,i)
     ar%az='12345'
    end function
