subroutine sub(in,out)
  integer,value :: in
  integer,value :: out
  out=in
  if (out .ne. 100) print *,'ng'
end subroutine
interface
subroutine proc(in,out)
  integer,value :: in
  integer,value :: out
end subroutine
end interface
procedure(proc) :: sub
integer :: in  
integer :: out  
in = 100
out = 0
call sub(in,out)
print *,'pass'
end
