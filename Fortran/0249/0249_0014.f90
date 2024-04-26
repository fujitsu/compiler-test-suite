subroutine s1

call  s12()
call  s12(null() )

contains
subroutine s12(ss)
optional :: ss
interface
function ss()
end function
end interface
end subroutine

end subroutine

call s1
print *,'pass'
end
