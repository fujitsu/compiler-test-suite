subroutine s1
character(8) x
integer::a
a=x'12345678'
write(1,'(z8.8)') a
rewind 1
read(1,'(a)')x
if (x/='12345678')print *,x
end
call s1
print *,'pass'
end
