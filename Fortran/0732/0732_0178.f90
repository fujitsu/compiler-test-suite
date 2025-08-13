subroutine ss0(i)
integer a
real(4),allocatable::b1(:)
allocate(b1(i))
b1=1.
write(159)dble(b1),1
write(160,*)dble(b1),1
rewind 160
read(160,*)a;if (a/=1)print *,'error 21'
rewind 159
read(159)a;if (a/=1)print *,'error 11'
end
call ss0(-3)
print *,'pass'
end
