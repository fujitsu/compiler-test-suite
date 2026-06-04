use iso_c_binding
integer::z(2,3)
call sss1
call sss2(z)
print *,'pass'
contains
subroutine sss1
integer::a(2,3),b(2),c(3)
a=reshape([1,2,3,4,5,6],[2,3])
b=[1,2]
c=[1,2,3]
if(sizeof(a(2,b))/=c_sizeof(a(2,b))) print *,'err1'
if(sizeof(a(c,2))/=c_sizeof(a(c,2))) print *,'err2'
if(sizeof(a(b,c))/=c_sizeof(a(b,c))) print *,'err3'
end subroutine
subroutine sss2(z)
integer::b(2),c(3)
integer,contiguous,intent(out),asynchronous,volatile::z(:,:)
z=reshape([1,2,3,4,5,6],[2,3])
b=[1,2]
c=[1,2,3]
if(sizeof(z(2,b))/=c_sizeof(z(2,b))) print *,'err1'
if(sizeof(z(c,2))/=c_sizeof(z(c,2))) print *,'err2'
if(sizeof(z(b,c))/=c_sizeof(z(b,c))) print *,'err3'
end subroutine
end
