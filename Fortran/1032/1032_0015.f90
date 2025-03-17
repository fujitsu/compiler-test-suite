subroutine sub01
integer,parameter::i1=-10,i2=5,j1=-5,j2=-3
integer a(i1:i2,j1:j2)
integer b(i1:i2,j1:j2)
integer c(i1:i2,j1:j2)
integer ::z(i1:i2,j1:j2)=reshape((/(ii,ii=1,10000)/),(/i2-i1+1,j2-j1+1/))
forall (k1=i1:i2)
forall (k2=j1:j2)
  a(k1,k2)= z(k1,k2)
  b(k1,k2)= a(k1,k2)
  c(k1,k2)= a(k1,k2)+b(1+k1-1,-1+k2+1)
end forall
end forall
if (any(a/=z))write(6,*) "NG"
if (any(b/=z))write(6,*) "NG"
if (any(c/=z*2))write(6,*) "NG"
end
subroutine sub02
integer,parameter::i1=-10,i2=5,j1=-5,j2=-3
integer a(i1:i2,j1:j2)
integer b(i1:i2,j1:j2)
integer c(i1:i2,j1:j2)
integer ::z(i1:i2,j1:j2)=reshape((/(ii,ii=1,10000)/),(/i2-i1+1,j2-j1+1/))
forall (k1=i1:i2,k1<=i2)
forall (k2=j1:j2,k2<=j2)
  a(k1,k2)= z(k1,k2)
  b(k1,k2)= a(k1,k2)
  c(k1,k2)= a(k1,k2)+b(1+k1-1,-1+k2+1)
end forall
end forall
if (any(a/=z))write(6,*) "NG"
if (any(b/=z))write(6,*) "NG"
if (any(c/=z*2))write(6,*) "NG"
end
subroutine sub03
integer,parameter::i1=-10,i2=5,j1=-5,j2=-3
integer a(i1:i2,j1:j2)
integer b(i1:i2,j1:j2)
integer c(i1:i2,j1:j2)
integer d(i1:i2,j1:j2)
integer ::z(i1:i2,j1:j2)=reshape((/(ii,ii=1,10000)/),(/i2-i1+1,j2-j1+1/))
d=-1
forall (k1=i1:i2,k1<=i2)
forall (k2=j1:j2,k2<=j2)
  a(k1,k2)= z(k1,k2)
  b(k1,k2)= a(k1,k2)
  c(k1,k2)= a(k1,k2)+b(1+k1-1,-1+k2+1)
  d(k1,k2)= d(-1+k1+1,k2)+z(k1,k2)
end forall
end forall
if (any(a/=z))write(6,*) "NG"
if (any(b/=z))write(6,*) "NG"
if (any(c/=z*2))write(6,*) "NG"
if (any(d/=z-1))write(6,*) "NG"
end
call sub01
call sub02
call sub03
print *,'pass'
end
