call s
print *,'pass'
end
subroutine s
read *, a,b,c
rewind 2
write(2,*) 2.3
rewind 2
read (2, fmt= "(e7.4)") x
read 10, i,j,k
10 format(3i8 )
end
