function   f() result(p)
interface
 subroutine sub(i)
  integer i
 end subroutine
end interface

procedure (sub), pointer :: p

p=>sub
end
subroutine yy(p)
    interface
     subroutine sub(i)
      integer i
     end subroutine
    end interface

  procedure (sub), pointer :: p
  call p(k)
  if (k/=1)print *,'fail'
end 

interface
 function   f() result(p)
    interface
     subroutine sub(i)
      integer i
     end subroutine
    end interface
  
  procedure (sub), pointer :: p
 end function
 subroutine yy(p)
    interface
     subroutine sub(i)
      integer i
     end subroutine
    end interface

  procedure (sub), pointer :: p
 end subroutine
   
end interface


interface
 subroutine sub(i)
  integer i
 end subroutine
end interface

procedure (sub), pointer :: pp
call yy(f())
print *,'pass'
end

subroutine sub(i)
 integer i
 i=1
end subroutine

