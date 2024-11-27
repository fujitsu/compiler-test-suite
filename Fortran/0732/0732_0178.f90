subroutine ss0(i)
integer a
real(4),allocatable::b1(:)
allocate(b1(i))
b1=1.
write(11)dble(b1),1
write(21,*)dble(b1),1
rewind 21
read(21,*)a;if (a/=1)print *,'error 21'
rewind 11
read(11)a;if (a/=1)print *,'error 11'
end
call ss0(-3)
print *,'pass'
end
