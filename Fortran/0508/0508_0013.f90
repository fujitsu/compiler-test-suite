module m1
  interface
    pure function f()
    end function 
  end interface
end

module m2
use m1 
    procedure(f), pointer :: p
end

pure subroutine sub(r)
use m2
intent(out)::r
r=p()
end

call set
call sub(r)
if (r/=1.) print *,2002
print *,'pass'
end
    pure function f()
    f=1
    end function 
subroutine set
use m2
p=>f
end subroutine
