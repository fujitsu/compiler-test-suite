interface gnr
subroutine s1(ss)
optional :: ss
procedure(integer),pointer :: ss
end subroutine

subroutine s2(ss)
integer  :: ss
end subroutine

end interface


call  gnr(null())
call  gnr()
end

subroutine s1(ss)
optional :: ss
procedure(integer),pointer :: ss
print*,'pass'
end subroutine

subroutine s2(ss)
integer  :: ss
ss=10
print*, ss
end subroutine
