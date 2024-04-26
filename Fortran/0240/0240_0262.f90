call s
print *,'pass'
end
subroutine s
read *, a,b,c
rewind 3
write(3,*) 2.3
rewind 3
read (3, fmt= "(e7.4)") x
read 10, i,j,k
10 format(3i8 )
end
