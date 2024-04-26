call  s1(null())
contains
subroutine s1(ss)
optional :: ss
procedure(real),pointer :: ss
print*,'pass'
end subroutine
end
