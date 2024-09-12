module m1
  character(1),target::ta(3,2)=reshape((/'a','b','c','d','e','f'/),(/3,2/))
  character(:),pointer::pa(:,:)
end
subroutine s1
use m1
interface
    function fa() result(r)
      character(:),pointer::r(:,:)
    end function 
end interface
pa=>fa()
if (len(pa)/=1)print *,'error-11'
if (any(pa/=reshape((/'a','b','c','d','e','f'/),(/3,2/))))print *,'error-12'
if (.not.associated(pa))print *,'error-13'
if (any(ubound(pa)/=(/3,2/)))print *,'error-14'
if (any(shape(pa)/=(/3,2/)))print *,'error-15'
end
call s1
print *,'pass'
end
    function fa() result(r)
      use m1
      character(:),pointer::r(:,:)
      r=>ta
    end function 
