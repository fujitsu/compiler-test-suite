subroutine s1
character(8) x
integer::a
a=x'12345678'
write(4,'(z8.8)') a
rewind 4
read(4,'(a)')x
if (x/='12345678')print *,x
end
call s1
print *,'pass'
end
