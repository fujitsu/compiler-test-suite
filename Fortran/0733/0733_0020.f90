module mx
contains
 function fub(i2,i3,j2,j3,k2,k3,m2,m3,a,b,bb,c)
 integer,pointer,dimension(:) ::a,c,b,bb
 integer,pointer,dimension(:) ::fub
 a(i2:i3)=ifun(b(k2:k3),bb(m2:m3))+c(j2:j3)
 allocate(fub(2))
 fub=a(2:3)
contains
 elemental function ifun(b,bb)
  integer ,intent(in)::b,bb
  ifun=b+bb
 end function
end function
end
use mx
 integer,parameter:: i2=2,i3=3,j2=2,j3=3,k2=2,k3=3,m2=2,m3=3
 integer,pointer,dimension(:) ::a,c,b,bb,aa
 allocate(a(5),c(5),b(5),bb(5),aa(2))
 b(2:3)=(/2,3/);bb(2:3)=(/3,4/);c(2:3)=(/4,5/)
 aa=  fub(i2,i3,j2,j3,k2,k3,m2,m3,a,b,bb,c)
 if (any(aa/=(/9,12/)))print *,'error'
 print *,'pass'
end
