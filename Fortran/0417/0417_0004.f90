subroutine s1
character(*),parameter::fmt='(i4)'
write(1,fmt) 1
write(1,'(i4)') 1
end
call s1
print *,'pass'
end
