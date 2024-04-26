subroutine s1
parameter(k=2)
parameter(i1=2,i2=3,i3=4)
real   (k),parameter:: aa(2,3,4)=reshape((/(i,i=1,i1*i2*i3)/),(/i1,i2,i3/))
complex(k),parameter:: a(2,3,4)=cmplx(aa,aa)
complex(k),dimension(2,3,4):: a1,a2
real   (k),parameter:: cc(2,3)=reshape((/(i,i=1,i1*i2)/),(/i1,i2/))
complex(k),parameter:: c(2,3)=cmplx(cc,cc)
complex(k),dimension(2,3):: c1,c2
real(k),parameter::x1(*)=(/2,1,4,3,6,5,8,7,10,9,12,11,14,13,16,15,18,17,20,19,22,21,24,23/)
complex(k),parameter::x2(*)=cmplx(x1,x1)
real(k),parameter::x3(*)=(/3,4,5,6,1,2,9,10,11,12,7,8,15,16,17,18,13,14,21,22,23,24,19,20/)
complex(k),parameter::x4(*)=cmplx(x3,x3)
real(k),parameter::x5(*)=(/2,1,4,3,6,5/)
complex(k),parameter::x6(*)=cmplx(x5,x5)
real(k),parameter::x7(*)=(/3,4,5,6,1,2/)
complex(k),parameter::x8(*)=cmplx(x7,x7)
a1=cshift(a,1,1)
a2=cshift(a,1,2)
if(any((/a1/)/=x2))print *,'error1'
if(any((/a2/)/=x4))print *,'error2'
c1=cshift(c,1,1)
c2=cshift(c,1,2)
if(any((/c1/)/=x6))print *,'error3'
if(any((/c2/)/=x8))print *,'error4'
end
subroutine s2
parameter(k=8)
parameter(i1=2,i2=3,i3=4)
real   (k),parameter:: aa(2,3,4)=reshape((/(i,i=1,i1*i2*i3)/),(/i1,i2,i3/))
complex(k),parameter:: a(2,3,4)=cmplx(aa,aa)
complex(k),dimension(2,3,4):: a1,a2
real   (k),parameter:: cc(2,3)=reshape((/(i,i=1,i1*i2)/),(/i1,i2/))
complex(k),parameter:: c(2,3)=cmplx(cc,cc)
complex(k),dimension(2,3):: c1,c2
real(k),parameter::x1(*)=(/2,1,4,3,6,5,8,7,10,9,12,11,14,13,16,15,18,17,20,19,22,21,24,23/)
complex(k),parameter::x2(*)=cmplx(x1,x1)
real(k),parameter::x3(*)=(/3,4,5,6,1,2,9,10,11,12,7,8,15,16,17,18,13,14,21,22,23,24,19,20/)
complex(k),parameter::x4(*)=cmplx(x3,x3)
real(k),parameter::x5(*)=(/2,1,4,3,6,5/)
complex(k),parameter::x6(*)=cmplx(x5,x5)
real(k),parameter::x7(*)=(/3,4,5,6,1,2/)
complex(k),parameter::x8(*)=cmplx(x7,x7)
a1=cshift(a,1,1)
a2=cshift(a,1,2)
if(any((/a1/)/=x2))print *,'error1'
if(any((/a2/)/=x4))print *,'error2'
c1=cshift(c,1,1)
c2=cshift(c,1,2)
if(any((/c1/)/=x6))print *,'error3'
if(any((/c2/)/=x8))print *,'error4'
end
call s1
call s2
print *,'pass'
end
