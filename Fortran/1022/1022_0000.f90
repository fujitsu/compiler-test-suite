module mod01
integer a(20)
common /com01/ a
end
use mod01
integer  j,k(19)
common /com01/j,k
a=(/(ii,ii=1,20)/)
j=1
write (7,*) 2,1100,20,40,a,a,a
rewind 7
data ii/1/
read (7,*) (a(ii),j=1,10)
print *,'pass'
end

