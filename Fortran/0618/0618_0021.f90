subroutine sub(in,out)
  integer,pointer,intent(in) :: in
  integer,pointer,intent(out) :: out
  out=>in
end subroutine
interface
subroutine proc(in,out)
  integer,pointer,intent(in) :: in
  integer,pointer,intent(out) :: out
end subroutine
end interface
procedure(proc) :: sub
integer,pointer :: in => null()
integer,pointer :: out => null()
allocate(in)
in = 100
call sub(in,out)
if (out .ne. 100) print *,'ng'
print *,'pass'
end
