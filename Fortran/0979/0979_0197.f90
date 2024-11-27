call test01()
print *,"pass"
end

subroutine test01()
character*10 cha,acha(10)
character*10 ,pointer :: ip,ipa(:)
cha="aaaaaaaaaaaaa"
acha="aaaaaaaaaaaaa"
allocate(ip,ipa(10))
ip="aaaaaaaaaaaaa"
ipa="aaaaaaaaaaaaa"
if (new_line("a") .ne. achar(10)) write(6,*) "NG"
if (new_line((/"a"/)) .ne. achar(10)) write(6,*) "NG"
if (new_line("a"(1:1)) .ne. achar(10)) write(6,*) "NG"
if (new_line("") .ne. achar(10)) write(6,*) "NG"
if (new_line("abc") .ne. achar(10)) write(6,*) "NG"
if (new_line("\n") .ne. achar(10)) write(6,*) "NG"
if (new_line(cha) .ne. achar(10)) write(6,*) "NG"
if (new_line(acha) .ne. achar(10)) write(6,*) "NG"
if (new_line(cha(1:2)) .ne. achar(10)) write(6,*) "NG"
if (new_line(acha(1)) .ne. achar(10)) write(6,*) "NG"
if (new_line(acha(1)(1:2)) .ne. achar(10)) write(6,*) "NG"
if (new_line(ip ) .ne. achar(10)) write(6,*) "NG"
if (new_line(ipa ) .ne. achar(10)) write(6,*) "NG"
if (new_line(ip (1:2)) .ne. achar(10)) write(6,*) "NG"
if (new_line(ipa (1)) .ne. achar(10)) write(6,*) "NG"
if (new_line(ipa (1)(1:2)) .ne. achar(10)) write(6,*) "NG"
end subroutine
