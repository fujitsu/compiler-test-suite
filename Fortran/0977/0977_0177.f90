call s('12345','12345','12345')
print *,'pass'
end
subroutine s(c1,c2,c3)
character(len=*) c1(1)
character(len=*) c2(*)
character(len=3) c3(*)

write(1,*)c1
write(1,*)c2(1)
write(1,*)c3(2)(1:2)
if (any(c1/='12345'))write(6,*) "NG"
if (c2(1)/='12345')write(6,*) "NG"
if (c3(2)(1:2)/='45')write(6,*) "NG"
end
