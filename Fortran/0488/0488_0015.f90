
procedure(internal),pointer:: p
p=> internal
call p ()
call sub(internal)
print *,'pass'
contains
 subroutine internal()
 end subroutine
 subroutine sub(proc)
  interface
    subroutine proc()
    end subroutine
  end interface
  call proc()
 end subroutine
end

