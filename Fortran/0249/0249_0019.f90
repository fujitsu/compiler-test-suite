call  s1(null())
contains
subroutine s1(ss)
optional :: ss
procedure(integer) :: ss
if (present(ss)) then
print*,101
else
print*,'pass'
endif
end subroutine
end
