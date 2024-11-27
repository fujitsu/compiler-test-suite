call s1
print *,'pass'
end
subroutine s1
call ss1
end
subroutine ss1
logical,parameter::t=.true.,f=.false.
logical(kind=1) m(4)/f,t,f,t/
integer(kind=4):: a(4)=(/1,2,3,4/),b(4)=(/4,1,2,3/), c(4)=(/3,4,1,2/)
integer(kind=4):: d(4)=(/2,3,4,1/)
integer(kind=4) e1(4),e2(4)
integer(kind=4),dimension(4)::r1,r2,r3,r4
integer::u=11
target a,b,c,d,e1,e2
type x
integer(kind=4),allocatable:: az(:),bz(:),cz(:),dz(:),e1z(:),e2z(:)
end type
type(x)::xv
xv=x(a,b,c,d,e1,e2)
call       ss21(m,a,b,c,d,e1=e1,e2=e2)
if (any(e1/=4))write(6,*) "NG"
if (any(e2/=(/0,4,0,4/)))write(6,*) "NG"
call       ss21(m,a,b,    e1=e1,e2=e2)
if (any(e1/=(/4,2,3,4/)))write(6,*) "NG"
if (any(e2/=(/0,2,0,4/)))write(6,*) "NG"
call       ss22(m,a,b,c,d,e1=e1,e2=e2,k=4)
if (any(e1/=4))write(6,*) "NG"
if (any(e2/=(/0,4,0,4/)))write(6,*) "NG"
call       ss22(m,a,b,    e1=e1,e2=e2,k=4)
if (any(e1/=(/4,2,3,4/)))write(6,*) "NG"
if (any(e2/=(/0,2,0,4/)))write(6,*) "NG"
call       ss23(m,xv%az,xv%bz,xv%cz,xv%dz,e1=xv%e1z,e2=xv%e2z)
if (any(xv%e1z/=4))write(6,*) "NG"
if (any(xv%e2z/=(/0,4,0,4/)))write(6,*) "NG"
call       ss23(m,xv%az,xv%bz,    e1=xv%e1z,e2=xv%e2z)
if (any(xv%e1z/=(/4,2,3,4/)))write(6,*) "NG"
if (any(xv%e2z/=(/0,2,0,4/)))write(6,*) "NG"
contains
subroutine ss21(m,a,b,c,d,e1,e2)
logical(kind=1) m(:)
integer(kind=4),optional:: a(:),b(:),c(:),d(:),e1(:),e2(:)
if (present(c ))then
 e1=max(a,b,c,d); if (any(e1/=4))write(6,*) "NG"
 e2=0;where (m)e2=max(a,b,c,d)
 if (any(e2/=(/0,4,0,4/)))write(6,*) "NG"
 call sss(max(a,b,c,d),(/(4_4,i=1,4)/))
 call ttt(    a,b,c,d ,(/(4_4,i=1,4)/))
 open(u,delim='quote');write(u,*)a,b,c,d;rewind u
 read(u,*)r1,r2,r3,r4;u=u+1
 if (any(r1/=a))write(6,*) "NG"; if (any(r2/=b))write(6,*) "NG"
 if (any(r3/=c))write(6,*) "NG"; if (any(r4/=d))write(6,*) "NG"
else
 e1=max(a,b    ); if (any(e1/=(/4,2,3,4/)))write(6,*) "NG"
 e2=0;where (m)e2=max(a,b    )
 if (any(e2/=(/0,2,0,4/)))write(6,*) "NG"
 call sss(max(a,b    ),(/4,2,3,4/))
 call ttt(    a,b     ,x=(/(4_4,2_4,3_4,4_4,i=1,1)/))
 open(u,delim='quote');write(u,*)a,b    ;rewind u
 read(u,*)r1,r2      ;u=u+1
 if (any(r1/=a))write(6,*) "NG"; if (any(r2/=b))write(6,*) "NG"
endif
end subroutine
subroutine sss(a1,a2)
integer(kind=4),dimension(:)::a1,a2
if (size(a1)/=4)write(6,*) "NG"; if (size(a2)/=4)write(6,*) "NG"
if (any(a1/=a2))write(6,*) "NG"
end subroutine
subroutine ss22(m,a,b,c,d,e1,e2,k)
logical(kind=1) m(k)
integer(kind=4),optional:: a(k),b(k),c(k),d(k),e1(k),e2(k)
if (present(c ))then
 e1=max(a,b,c,d); if (any(e1/=4))write(6,*) "NG"
 e2=0;where (m)e2=max(a,b,c,d)
 if (any(e2/=(/0,4,0,4/)))write(6,*) "NG"
 call sss(max(a,b,c,d),(/(4_4,i=1,4)/))
 call ttt(    a,b,c,d ,(/(4_4,i=1,4)/))
 open(u,delim='quote');write(u,*)a,b,c,d;rewind u
 read(u,*)r1,r2,r3,r4;u=u+1
 if (any(r1/=a))write(6,*) "NG"; if (any(r2/=b))write(6,*) "NG"
 if (any(r3/=c))write(6,*) "NG"; if (any(r4/=d))write(6,*) "NG"
else
 e1=max(a,b    ); if (any(e1/=(/4,2,3,4/)))write(6,*) "NG"
 e2=0;where (m)e2=max(a,b    )
 if (any(e2/=(/0,2,0,4/)))write(6,*) "NG"
 call sss(max(a,b    ),(/4,2,3,4/))
 call ttt(    a,b     ,x=(/4,2,3,4/))
 open(u,delim='quote');write(u,*)a,b    ;rewind u
 read(u,*)r1,r2      ;u=u+1
 if (any(r1/=a))write(6,*) "NG"; if (any(r2/=b))write(6,*) "NG"
endif
end subroutine
subroutine ss23(m,a,b,c,d,e1,e2)
logical(kind=1) m(:)
integer(kind=4),optional,allocatable:: a(:),b(:),c(:),d(:),e1(:),e2(:)
if (present(c ))then
 e1=max(a,b,c,d); if (any(e1/=4))write(6,*) "NG"
 e2=0;where (m)e2=max(a,b,c,d)
 if (any(e2/=(/0,4,0,4/)))write(6,*) "NG"
 call sss(max(a,b,c,d),(/(4_4,i=1,4)/))
 call ttt(    a,b,c,d ,(/(4_4,i=1,4)/))
 open(u,delim='quote');write(u,*)a,b,c,d;rewind u
 read(u,*)r1,r2,r3,r4;u=u+1
 if (any(r1/=a))write(6,*) "NG"; if (any(r2/=b))write(6,*) "NG"
 if (any(r3/=c))write(6,*) "NG"; if (any(r4/=d))write(6,*) "NG"
else
 e1=max(a,b    ); if (any(e1/=(/4,2,3,4/)))write(6,*) "NG"
 e2=0;where (m)e2=max(a,b    )
 if (any(e2/=(/0,2,0,4/)))write(6,*) "NG"
 call sss(max(a,b    ),(/4,2,3,4/))
 call ttt(    a,b     ,x=(/4,2,3,4/))
 open(u,delim='quote');write(u,*)a,b    ;rewind u
 read(u,*)r1,r2      ;u=u+1
 if (any(r1/=a))write(6,*) "NG"; if (any(r2/=b))write(6,*) "NG"
endif
end subroutine
subroutine ttt(a,b,c,d,x)
integer,optional,dimension(:)::a,b,c,x,d
if (present(c))then
  if (any(max(a,b,c,d)/=(/4,4,4,4/)))write(6,*) "NG"
  if (any(max(a,b,c,d)/=x          ))write(6,*) "NG"
else
  if (any(max(a,b    )/=(/4,2,3,4/)))write(6,*) "NG"
  if (any(max(a,b    )/=(/x      /)))write(6,*) "NG"
endif
end subroutine
end
