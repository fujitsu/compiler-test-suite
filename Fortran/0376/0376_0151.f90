interface
 subroutine isub(c)
  character :: c
 end subroutine
 subroutine jsub(c)
  character :: c
 end subroutine
end interface
procedure(isub),pointer :: p
character :: cha
p=>p
p=>jsub
call p(cha)
if (cha.ne.'a') print *,'fail'

print *,'pass'
end
subroutine jsub(c)
 character :: c
 c='a'
end subroutine

