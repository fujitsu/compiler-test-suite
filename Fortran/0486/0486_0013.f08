subroutine s1
integer:: result
result = iany( [ 3, 7, 11 ] )

write(1, '(b8.8)' ) 3
write(1, '(b8.8)' ) 7
write(1, '(b8.8)' ) 11
if (result/=15) print *,201
end
call s1
print *,'pass'
end