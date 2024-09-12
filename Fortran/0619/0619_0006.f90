subroutine  s1
integer,parameter,dimension(2,3)::k=1
integer,parameter,dimension(0)::kk=1
real,parameter,dimension(2,3):: a01= dble(1)
real,parameter,dimension(2,3):: a02= dble(a=1)
real,parameter,dimension(2,3):: a03= dble(a=k)
real,parameter,dimension(0):: a04= dble(a=kk)
complex(4),parameter,dimension(3)::b1=[(1,2),(3,4),(5,6)]
complex(8),parameter,dimension(3)::b2=[(1,2),(3,4),(5,6)]
complex(16),parameter,dimension(3)::b3=[(1,2),(3,4),(5,6)]
integer,parameter::k1=size(a04)
integer,parameter::k2=size(dble(a=kk))
real,parameter,dimension(2,3):: a05= dble(a=k)
real,parameter,dimension(2,3):: a06= dble(A=k)
real,parameter,dimension(2,3):: a07= dble(A=1)
real,parameter,dimension(3):: a08= dble(a=[1,2,3])
integer,parameter:: n01= kind(dble(a=[1,2,3]))
integer,parameter:: n04= kind(dble(a=b1))
integer,parameter:: n05= kind(dble(a=b2))
integer,parameter:: n06= kind(dble(a=b3))
integer,parameter:: n30= kind(dble(b'1'))
integer,parameter:: n19= kind(dble(o'1'))
integer,parameter:: n20= kind(dble(z'1'))
real(4),parameter::a14=dble(z'40000000 00000000')
real(8),parameter::a15=dble(z'40000000 00000000')
real(16),parameter::a16=dble(z'40000000 00000000 00000000 00000000')
real(4),parameter::a17=dble(o'0400000000000000000000')
real(4),parameter::a18=dble(b'01000000000000000000000000000000 00000000000000000000000000000000')
if (abs(a14-2)>0.00001)print *,304
if (abs(a15-2)>0.00001)print *,305
if (abs(a16-0)>0.00001)print *,306
if (abs(a17-2)>0.00001)print *,307
if (abs(a18-2)>0.00001)print *,308
if (abs(dble(o'000400000000000000000000')-2.0 )>0.00001)print *,309
if (abs(dble(b'01000000000000000000000000000000 00000000000000000000000000000000')-2.0 )>0.00001)print *,310
if (n30/=8) print *,214
if (n19/=8) print *,215
if (n20/=8) print *,216
if (any(abs(a01-1)>0.0001))print *,101
if (any(abs(a02-1)>0.0001))print *,102
if (any(abs(a03-1)>0.0001))print *,103
if (any(abs(a05-1)>0.0001))print *,105
if (any(abs(a06-1)>0.0001))print *,106
if (any(abs(a07-1)>0.0001))print *,107
if (any(abs(a08-[1,2,3])>0.0001))print *,108
if (k1/=0)print *,114
if (k2/=0)print *,115
if (n01/=8) print *,200
if (kind(dble(b1))/=8)print *,301
if (n04/=8) print *,203
if (n05/=8) print *,204
if (n06/=8) print *,205
end
call s1
print *,'pass'
end
