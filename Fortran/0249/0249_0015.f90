
call  s12(null())
print*, 'pass'
contains
subroutine s12(ss)
optional :: ss
interface
subroutine ss()
end subroutine
end interface
end subroutine
end 



