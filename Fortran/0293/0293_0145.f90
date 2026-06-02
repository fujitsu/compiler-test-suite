function   f() result(p)
interface
 subroutine sub(i)
  integer i
 end subroutine
end interface

procedure (sub), pointer :: p

p=>sub
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
end interface


interface
 subroutine sub(i)
  integer i
 end subroutine
end interface

procedure (sub), pointer :: pp
pp=>f()
call pp(k)
if (k/=1)print *,'fail'
print *,'pass'
end

subroutine sub(i)
 integer i
 i=1
end subroutine

