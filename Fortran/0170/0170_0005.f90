subroutine s1
integer:: a(0,0)
call ss(a,a,a)
rewind 1
read(1,*) k1,k2
if (k1/=1) print *,201
if (k2/=2) print *,202
read(1,*) k1,k2
if (k1/=1) print *,201
if (k2/=2) print *,202
read(1,*) k1,k2
if (k1/=1) print *,201
if (k2/=2) print *,202
read(1,*) k1,k2
if (k1/=1) print *,201
if (k2/=2) print *,202
read(1,*) k1,k2
if (k1/=1) print *,201
if (k2/=2) print *,202
read(1,*,end=1) k1,k2
print *,201
1 continue
contains
subroutine ss(a,b,c)
integer:: a(:,:),b(:,:),c(:,:)
write(1,*) 1,[a , b , c],2
write(1,*) [a , b , c, 1],2
write(1,*) [a , 1,b , c, 2]
write(1,*) [1, 2, a , b , c]
write(1,*) [a , b , c ,1,2]
end subroutine
end
call s1
print *,'pass'
end
