module m1
  procedure(),pointer,private::x
private
public::d
  contains
    subroutine d(p)
       character(*),pointer::p
    end subroutine
end
module m2
  procedure(),pointer,private::x
private
public::d
  contains
    subroutine d(p)
       character(*),pointer::p
    end subroutine
end

subroutine s1
use m1
integer::x=1
end
subroutine s2
use m2
integer::x=1
end
call s1
call s2
print *,'sngg984o : pass'
end
