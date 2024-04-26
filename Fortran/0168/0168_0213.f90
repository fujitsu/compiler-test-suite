subroutine s1
real(8)::a(2),b1(2,2),b2(2,2),c(2)
complex(8)::aa(2),bb1(2,2),bb2(2,2),cc(2)
integer::v(2)
v=(/1,2/)
b1=1.0
b2=1.0
c=1.0
bb1%im=b1
bb2%im=b2
cc%im=c
a=sum(b1(v,1:2)+b2(v,1:2),dim=2)+c
if (any(abs(a-5)>0.00001))print *,101,a
a=sum(bb1(v,1:2)%im+b2(v,1:2),dim=2)+c
if (any(abs(a-5)>0.00001))print *,102,a
a=sum(b1(v,1:2)+bb2(v,1:2)%im,dim=2)+c
if (any(abs(a-5)>0.00001))print *,103,a
a=sum(b1(v,1:2)+b2(v,1:2),dim=2)+cc%im
if (any(abs(a-5)>0.00001))print *,104,a
aa%im=sum(b1(v,1:2)+b2(v,1:2),dim=2)+c
if (any(abs(aa%im-5)>0.00001))print *,105,aa%im
aa%im=sum(bb1(v,1:2)%im+bb2(v,1:2)%im,dim=2)+cc%im
if (any(abs(aa%im-5)>0.00001))print *,106,aa%im
end
call s1
print *,'pass'
end
