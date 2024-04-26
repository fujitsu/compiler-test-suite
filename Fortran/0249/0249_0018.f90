call  sub(null())
contains
subroutine sub(ss)
optional :: ss
procedure() :: ss
if (present(ss)) then
print*,101
else
print*,'pass'
endif
end subroutine
end
