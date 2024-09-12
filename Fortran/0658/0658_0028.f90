call aaaaa
call bbbbb
print *,'pass'
end
subroutine aaaaa
character*100 a
character*100 b(200000)
a='abcdefghjk                                             '
b='abcdefghjk                                             '
do i=1,200000
  if(trim(a) .ne. trim(b(i))) print *,'ng'
enddo
end subroutine
subroutine bbbbb
character*100 a
character*100 b(200000)
a='abcdefghjk                                             '
b='abcdefghjk                                             '
do i=1,200000
  if(a .ne. b(i)) print *,'ng'
enddo
end subroutine
