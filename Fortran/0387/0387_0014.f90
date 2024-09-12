integer:: i = 1
call sub(i)
print *,'pass'

end

subroutine sub(i)
interface
 subroutine sub2(a)
  integer:: a
 end subroutine
end interface
integer:: i
procedure(sub2),pointer :: sp
i=1
entry sube(i)
sp=>sub2
sp=>sube
 contains
  subroutine sub3(x)
   integer x
   x=1
  end subroutine
end subroutine

subroutine sub2(a)
 integer:: a
end subroutine
