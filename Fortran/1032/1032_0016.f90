subroutine sub02
integer,parameter::i1=-10,i2=5,j1=-5,j2=-3
integer d(i1-1:i2,j1:j2)
integer ::z(i1:i2+1,j1:j2)=reshape((/(ii,ii=1,10000)/),(/i2-i1+1+1,j2-j1+1/))
d=reshape((/(ii,ii=1,10000)/),(/i2-i1+1+1,j2-j1+1/))
forall (k1=i1:i2,k1<=i2)
forall (k2=j1:j2,k2<=j2)
  d(k1,k2)= d(-2+k1+1,k2)+z(k1,k2)
end forall
end forall
if (any((/d/)/=(/&
1,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,18,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,35,70,72,74,76,78,80,82,84,86,88,90,92,94,96,98,100&
/)))write(6,*) "NG"
end
subroutine sub03
integer,parameter::i1=-10,i2=5,j1=-5,j2=-3
integer d(i1-1:i2,j1:j2)
d=reshape((/(ii,ii=1,10000)/),(/i2-i1+1+1,j2-j1+1/))
forall (k1=i1:i2,k1<=i2)
forall (k2=j1:j2,k2<=j2)
  d(k1,k2)= d(-2+k1+1,k2)
end forall
end forall
if (any((/d/)/=(/&
1,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,18,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,35,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50&
/)))write(6,*) "NG"
end
call sub02
call sub03
print *,'pass'
end
