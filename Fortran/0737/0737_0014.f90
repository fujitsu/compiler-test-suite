call s1
print *,'pass'
end
subroutine s1
call ss1
end
subroutine ss1
logical,parameter::t=.true.,f=.false.
logical(kind=1) m(4)/f,t,f,t/
integer mm(4)/0,1,0,1/
character(kind=1):: a(4)=(/'1','2','3','4'/) ,b(4)=(/'4','1','2','3'/), c(4)=(/'3','4','1','2'/), d(4)=(/'2','3','4','1'/)
character(kind=1) e1(4),e2(4)
character(kind=1),dimension(4)::r1,r2,r3,r4
integer  ::u=30
target a,b,c,d,e1,e2
type x
character(kind=1),allocatable:: az(:),bz(:),cz(:),dz(:),e1z(:),e2z(:)
end type
type(x),allocatable::xv(:)
allocate(xv(1))
e1=' ';e2=' '
xv(1)=x(a,b,c,d,e1,e2)
call       ss21(m,xv(1)%az,xv(1)%bz,xv(1)%cz,xv(1)%dz,e1=xv(1)%e1z,e2=xv(1)%e2z)
if (any(xv(1)%e1z/='4'))write(6,*) "NG"
if (any(xv(1)%e2z/=(/'0','4','0','4'/)))write(6,*) "NG"
call       ss21(m,xv(1)%az,xv(1)%bz,    e1=xv(1)%e1z,e2=xv(1)%e2z)
if (any(xv(1)%e1z/=(/'4','2','3','4'/)))write(6,*) "NG"
if (any(xv(1)%e2z/=(/'0','2','0','4'/)))write(6,*) "NG"
call       ss22(m,xv(1)%az,xv(1)%bz,xv(1)%cz,xv(1)%dz,e1=xv(1)%e1z,e2=xv(1)%e2z,k=4)
if (any(xv(1)%e1z/='4'))write(6,*) "NG"
if (any(xv(1)%e2z/=(/'0','4','0','4'/)))write(6,*) "NG"
call       ss22(m,xv(1)%az,xv(1)%bz,    e1=xv(1)%e1z,e2=xv(1)%e2z,k=4)
if (any(xv(1)%e1z/=(/'4','2','3','4'/)))write(6,*) "NG"
if (any(xv(1)%e2z/=(/'0','2','0','4'/)))write(6,*) "NG"
call       ss23(m,xv(1)%az,xv(1)%bz,xv(1)%cz,xv(1)%dz,e1=xv(1)%e1z,e2=xv(1)%e2z)
if (any(xv(1)%e1z/='4'))write(6,*) "NG"
if (any(xv(1)%e2z/=(/'0','4','0','4'/)))write(6,*) "NG"
call       ss23(m,xv(1)%az,xv(1)%bz,    e1=xv(1)%e1z,e2=xv(1)%e2z)
if (any(xv(1)%e1z/=(/'4','2','3','4'/)))write(6,*) "NG"
if (any(xv(1)%e2z/=(/'0','2','0','4'/)))write(6,*) "NG"
contains
subroutine ss21(m,a,b,c,d,e1,e2)
logical(kind=1) m(:)
character(*),optional:: a(:),b(:),c(:),d(:),e1(:),e2(:)
if (present(c ))then
 e1=char(max(ichar(a),ichar(b),ichar(c),ichar(d)))
 if (any(e1/='4'))write(6,*) "NG"
 e2='0';where (m)e2=achar(max(ichar(a)/mm,ichar(b)/mm, ichar(c)/mm,ichar(d)/mm))
 if (any(e2/=(/'0','4','0','4'/)))write(6,*) "NG"
 call sss(char(max(ichar(a),ichar(b),ichar(c),ichar(d))), (/('4',i=1,4)/))
 call ttt(    a,b,c,d ,(/('4',i=1,4)/))
 open(u,delim='quote');write(u,*)a,b,c,d;rewind u
 read(u,*)r1,r2,r3,r4;u=u+1
 if (any(r1/=a))write(6,*) "NG"; if (any(r2/=b))write(6,*) "NG"
 if (any(r3/=c))write(6,*) "NG"; if (any(r4/=d))write(6,*) "NG"
else
 e1=char(max(ichar(a),iachar(b)    ))
 if (any(e1/=(/'4','2','3','4'/)))write(6,*) "NG"
 e2='0';where (m)e2=char(max(ichar(a)/mm,iachar(b)/mm ))
 if (any(e2/=(/'0','2','0','4'/)))write(6,*) "NG"
 call sss(char(max(ichar(a),iachar(b)    )),(/'4','2','3','4'/))
 call ttt(    a,b     ,x=(/('4',i=1,4)/))
 open(u,delim='quote');write(u,*)a,b    ;rewind u
 read(u,*)r1,r2      ;u=u+1
 if (any(r1/=a))write(6,*) "NG"; if (any(r2/=b))write(6,*) "NG"
endif
end subroutine
subroutine sss(a1,a2)
character(kind=1),dimension(:)::a1,a2
if (size(a1)/=4)write(6,*) "NG"; if (size(a2)/=4)write(6,*) "NG"
if (any(a1/=a2))write(6,*) "NG"
end subroutine
subroutine ss22(m,a,b,c,d,e1,e2,k)
logical(kind=1) m(k)
character(kind=1),optional:: a(k),b(k),c(k),d(k),e1(k),e2(k)
if (present(c ))then
 e1=char(max(ichar(a),ichar(b),ichar(c),ichar(d)))
 if (any(e1/='4'))write(6,*) "NG"
 e2='0';where (m)e2=achar(max(ichar(a)/mm,ichar(b)/mm, ichar(c)/mm,ichar(d)/mm))
 if (any(e2/=(/'0','4','0','4'/)))write(6,*) "NG"
 call sss(char(max(ichar(a),ichar(b),ichar(c),ichar(d))),  (/('4',i=1,4)/))
 call ttt(    a,b,c,d ,(/('4',i=1,4)/))
 open(u,delim='quote');write(u,*)a,b,c,d;rewind u
 read(u,*)r1,r2,r3,r4;u=u+1
 if (any(r1/=a))write(6,*) "NG"; if (any(r2/=b))write(6,*) "NG"
 if (any(r3/=c))write(6,*) "NG"; if (any(r4/=d))write(6,*) "NG"
else
 e1=char(max(ichar(a),iachar(b)   ))
 if (any(e1/=(/'4','2','3','4'/)))write(6,*) "NG"
 e2='0';where (m)e2=char(max(ichar(a)/mm,iachar(b)/mm ))
 if (any(e2/=(/'0','2','0','4'/)))write(6,*) "NG"
 call sss(char(max(ichar(a),iachar(b)    )),(/'4','2','3','4'/))
 call ttt(    a,b     ,x=(/'4','2','3','4'/))
 open(u,delim='quote');write(u,*)a,b    ;rewind u
 read(u,*)r1,r2;u=u+1
 if (any(r1/=a))write(6,*) "NG"; if (any(r2/=b))write(6,*) "NG"
endif
end subroutine
subroutine ss23(m,a,b,c,d,e1,e2)
logical(kind=1) m(:)
character(*),optional,allocatable:: a(:),b(:),c(:),d(:),e1(:),e2(:)
if (present(c ))then
 e1=char(max(ichar(a),ichar(b),ichar(c),ichar(d)))
 if (any(e1/='4'))write(6,*) "NG"
 e2='0';where (m)e2=achar(max(ichar(a)/mm,ichar(b)/mm, ichar(c)/mm,ichar(d)/mm))
 if (any(e2/=(/'0','4','0','4'/)))write(6,*) "NG"
 call sss(char(max(ichar(a),ichar(b),ichar(c),ichar(d))), (/('4',i=1,4)/))
 call ttt(    a,b,c,d ,(/('4',i=1,4)/))
 open(u,delim='quote');write(u,*)a,b,c,d;rewind u
 read(u,*)r1,r2,r3,r4;u=u+1
 if (any(r1/=a))write(6,*) "NG"; if (any(r2/=b))write(6,*) "NG"
 if (any(r3/=c))write(6,*) "NG"; if (any(r4/=d))write(6,*) "NG"
else
 e1=char(max(ichar(a),iachar(b)    ))
 if (any(e1/=(/'4','2','3','4'/)))write(6,*) "NG"
 e2='0';where (m)e2=char(max(ichar(a)/mm,iachar(b)/mm ))
 if (any(e2/=(/'0','2','0','4'/)))write(6,*) "NG"
 call sss(char(max(ichar(a),iachar(b)    )),(/'4','2','3','4'/))
 call ttt(    a,b     ,x=(/'4','2','3','4'/))
 open(u,delim='quote');write(u,*)a,b    ;rewind u
 read(u,*)r1,r2;u=u+1
 if (any(r1/=a))write(6,*) "NG"; if (any(r2/=b))write(6,*) "NG"
endif
end subroutine
subroutine ttt(a,b,c,d,x)
character(*),optional,dimension(:)::a,b,c,x,d
character y(4)
if (present(c))then
  if (any(char(max(ichar(a),ichar(b),ichar(c),ichar(d))) /=(/'4','4','4','4'/)))write(6,*) "NG"
y='0'
where(m) y=char(max(ichar(a)/mm,ichar(b)/mm,ichar(c)/mm,ichar(d)/mm))
if (any(y   /=(/'0','4','0','4'/)))write(6,*) "NG"
else
  if (any(char(max(ichar(a),iachar(b)    )) /=(/'4','2','3','4'/)))write(6,*) "NG"
y='0'
where(m) y=    char(max(ichar(a)/mm,ichar(b)/mm   ))
if (any(y   /=(/'0','2','0','4'/)))write(6,*) "NG"
endif
end subroutine
end
