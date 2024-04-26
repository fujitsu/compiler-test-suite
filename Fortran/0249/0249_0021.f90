call  s1(null())
call  s1()
contains
subroutine s1(ss)
optional :: ss
procedure(integer),pointer :: ss
print*,'pass'
end subroutine
end
