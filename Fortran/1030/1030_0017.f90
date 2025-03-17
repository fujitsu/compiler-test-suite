subroutine sub(DX,hiTim,Xp,K,i5,i10)
real(8):: DX(i10),hiTim(i5+1,i5),Xp(i10)
integer a1(2,2),a2(2,2)
integer b1(5,5),b2(5,5),c(25)
DX(1:K)= DX(1:K)-MATMUL(Xp(1:K),transpose(hiTim(1:K,1:K)))
a1=transpose(reshape((/1,2,3,4/),(/2,2/)))
a2=          reshape((/1,2,3,4/),(/2,2/))
write(1,*)a1(:,2)
write(1,*)a2(2,:)
b1=hiTim(1:K,1:K)
b2=transpose(hiTim(1:K,1:K))
write(1,*)b1(:,1)
write(1,*)b2(1,:)
write(1,*)b1(:,2)
write(1,*)b2(2,:)
write(1,*)b2
rewind 1
read(1,*)c(1:2);if(any(c(1:2)/=(/2,4/)))write(6,*) "NG"
read(1,*)c(1:2);if(any(c(1:2)/=(/2,4/)))write(6,*) "NG"
read(1,*)c(1:5);if(any(c(1:5)/=(/1,2,3,4,5/)))write(6,*) "NG"
read(1,*)c(1:5);if(any(c(1:5)/=(/1,2,3,4,5/)))write(6,*) "NG"
read(1,*)c(1:5);if(any(c(1:5)/=(/7,8,9,10,11/)))write(6,*) "NG"
read(1,*)c(1:5);if(any(c(1:5)/=(/7,8,9,10,11/)))write(6,*) "NG"
read(1,*)c(1:25);if(any(c(1:25)/=(/1,7,13,19,25,2,8,14,20,26,3,9,15,21,27,4,10,16,22,28,5,11,17,23,29/)))write(6,*) "NG"
end
real(8):: DX(10),hiTim(6,5),Xp(10)
i5=5
i10=10
k=5
DX=reshape((/(i,i=111,120)/),(/10/))
hiTim=reshape((/(i,i=1,6*5)/),(/6,5/))
Xp=reshape((/(i,i=1,10)/),(/10/))
call       sub(DX,hiTim,Xp,K,i5,i10)
if (any(abs(DX-(/&
-144,-158,-172,-186,-200,116,117,118,119,120&
/))>0.01))write(6,*)'error'
print *,'pass'
end
