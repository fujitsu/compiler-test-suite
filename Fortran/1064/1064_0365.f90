subroutine s1
write(1, '( i4,*(i4) )' ) 1
write(1, '( i4 *(i4) )' ) 1
write(1, '( i4, (i4) )' ) 1
write(1, '( i4  (i4) )' ) 1
end
call s1
print *,'pass'
end
