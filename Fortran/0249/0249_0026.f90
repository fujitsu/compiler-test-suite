interface gnr
subroutine s1(ss)
optional :: ss
procedure() :: ss
end subroutine

subroutine s2(ss)
integer :: ss
end subroutine
end interface

call  gnr(null())
end

subroutine s1(ss)
optional :: ss
procedure() :: ss
if (present(ss)) then
print*,101
else
print*,'pass'
endif
end subroutine

subroutine s2(ss)
integer :: ss
ss=10
print*, ss
end subroutine
