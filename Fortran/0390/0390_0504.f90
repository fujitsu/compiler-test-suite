subroutine s1
integer:: aa
integer:: ab(2)
interface
subroutine ss1(a)
integer,volatile:: a
end subroutine
subroutine ss2(a)
integer,volatile:: a(2)
end subroutine
subroutine ss3(a)
integer,asynchronous:: a
end subroutine
subroutine ss4(a)
integer,asynchronous:: a(2)
end subroutine
end interface
call ss1(aa)
call ss2(ab)
call ss3(aa)
call ss4(ab)
end 
call s1
print *,'pass'
end
subroutine ss1(a)
integer,volatile:: a
a=1
end subroutine
subroutine ss2(a)
integer,volatile:: a(2)
a=1
end subroutine
subroutine ss3(a)
integer,asynchronous:: a
a=1
end subroutine
subroutine ss4(a)
integer,asynchronous:: a(2)
a=1
end subroutine

