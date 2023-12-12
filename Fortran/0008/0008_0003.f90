subroutine s1
integer:: k(4,3),kk(4,3),kkk(4,3),kkkk(4,3)
integer::        nn(4,3),nnn(4,3),nnnn(4,3)
integer::        mm(4,3),mmm(4,3),mmmm(4,3)
integer,parameter::p(4,3)=reshape([1,2,3,4,5,6,7,8,9,10,11,12],[4,3])
k=0
forall (n=1:ifun(k))
kk(n,:)=k(n,:)
kk(n,:)=kk(n,:)+1
kk(n+1,:)=kk(n,:)+1
kkk(n,:)=k(n,:)
kkk(n,:)=kkk(n,:)+1
kkk(n+1,:)=kkk(n,:)+1
kkkk(n,:)=k(n,:)
kkkk(n,:)=kkkk(n,:)+1
kkkk(n+1,:)=kkkk(n,:)+1
end forall

k=0
j=ifun( k )
nn=0
mm(:3,:)=k(:3,:)
do n=1,j
nn(n ,:) = mm(n,:)+1
end do
do n=1,j
mm(n ,:) = nn(n,:)
end do
do n=1,j
nn(n ,:) = mm(n,:)+1
end do
do n=1,j
mm(n+1 ,:) = nn(n,:)
end do

k=0
j=ifun( k )
nnn=0
mmm(:3,:)=k(:3,:)
do n=1,j
nnn(n ,:) = mmm(n,:)+1
end do
do n=1,j
mmm(n ,:) = nnn(n,:)
end do
do n=1,j
nnn(n ,:) = mmm(n,:)+1
end do
do n=1,j
mmm(n+1 ,:) = nnn(n,:)
end do

k=0
j=ifun( k )
nnnn=0
mmmm(:3,:)=k(:3,:)
do n=1,j
nnnn(n ,:) = mmmm(n,:)+1
end do
do n=1,j
mmmm(n ,:) = nnnn(n,:)
end do
do n=1,j
nnnn(n ,:) = mmmm(n,:)+1
end do
do n=1,j
mmmm(n+1 ,:) = nnnn(n,:)
end do


if (any(kk/=mm)) then
  print *,101
  print *,kk
  print *,mm
endif
if (any(kkk/=mmm)) then
  print *,102
  print *,kkk
  print *,mmm
endif
if (any(kkkk/=mmmm)) then
  print *,103
  print *,kkkk
  print *,mmmm
endif
contains
function ifun( k ) result(ir)
integer:: k(4,3)
k=K+p
ir=size(k,1)-1
end function
end
call s1
print *,'OK'
end

