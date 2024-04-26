complex:: a(10),b(10)
data a%re /10*1.0/
write (10,*) (a(i)%re,i=1,10)
rewind 10
read (10,*) b%im
do i=1,10
if (b(1)%im .ne. 1.0) print *,'err'
end do
print *,'pass'
end
