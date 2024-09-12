subroutine  s1
integer,parameter,dimension(2,3)::k=1
integer,parameter,dimension(2,3)::kkk=4
integer,parameter,dimension(0)::kk=1
integer(8),parameter::m4=4,m8=8,m16=16
real,parameter,dimension(2,3):: a01= real(1)
real,parameter,dimension(2,3):: a02= real(a=1)
real,parameter,dimension(2,3):: a03= real(a=k)
real,parameter,dimension(0):: a04= real(a=kk)
complex(4),parameter,dimension(3)::b1=[(1,2),(3,4),(5,6)]
complex(8),parameter,dimension(3)::b2=[(1,2),(3,4),(5,6)]
complex(16),parameter,dimension(3)::b3=[(1,2),(3,4),(5,6)]
integer,parameter::k1=size(a04)
integer,parameter::k2=size(real(a=kk))
real,parameter,dimension(2,3):: a05= real(a=k,kind=4)
real,parameter,dimension(2,3):: a06= real(kind=4,A=k)
real,parameter,dimension(2,3):: a07= real(kind=kkk(2,3),A=1)
real,parameter,dimension(3):: a08= real(kind=4,a=[1,2,3])
integer,parameter:: n01= kind(real(kind=4,a=[1,2,3]))
integer,parameter:: n02= kind(real(kind=8,a=[1,2,3]))
integer,parameter:: n03= kind(real(kind=16,a=[1,2,3]))
integer,parameter:: n04= kind(real(a=b1))
integer,parameter:: n05= kind(real(a=b2))
integer,parameter:: n06= kind(real(a=b3))
integer,parameter:: n07= kind(real(b1,kind=4_8))
integer,parameter:: n08= kind(real(b2,kind=m4))
integer,parameter:: n09= kind(real(b3,kind=4_8))
integer,parameter:: n10= kind(real(b1,kind=8_8))
integer,parameter:: n11= kind(real(b2,kind=m8))
integer,parameter:: n12= kind(real(b3,kind=8_8))
integer,parameter:: n13= kind(real(b1,kind=16_8))
integer,parameter:: n14= kind(real(b2,kind=16_8))
integer,parameter:: n15= kind(real(b3,kind=m16))
integer,parameter:: n16= kind(real(b1,kind=4_1))
integer,parameter:: n17= kind(real(b2,kind=4_1))
integer,parameter:: n18= kind(real(b3,kind=4_1))
integer,parameter:: n30= kind(real(b'1'))
integer,parameter:: n19= kind(real(o'1'))
integer,parameter:: n20= kind(real(z'1'))
integer,parameter:: n21= kind(real(b'1',4_8))
integer,parameter:: n22= kind(real(o'1',4_8))
integer,parameter:: n23= kind(real(z'1',4_8))
integer,parameter:: n24= kind(real(b'1',8_8))
integer,parameter:: n25= kind(real(o'1',8_8))
integer,parameter:: n26= kind(real(z'1',8_8))
integer,parameter:: n27= kind(real(b'1',16_8))
integer,parameter:: n28= kind(real(o'1',16_8))
integer,parameter:: n29= kind(real(z'1',16_8))
real(4),parameter::a11=real(z'40000000',4)
real(8),parameter::a12=real(z'40000000 00000000',8)
real(16),parameter::a13=real(z'40000000 00000000 00000000 00000000',16)
real(4),parameter::a14=real(z'40000000')
real(8),parameter::a15=real(z'40000000 00000000')
real(16),parameter::a16=real(z'40000000 00000000 00000000 00000000')
real(4),parameter::a17=real(o'10000000000')
real(4),parameter::a18=real(b'01000000000000000000000000000000')
if (abs(a11-2)>0.00001)print *,301
if (abs(a12-2)>0.00001)print *,302,a12
if (abs(a13-2)>0.00001)print *,303,a13
if (abs(a14-2)>0.00001)print *,304
if (abs(a15-0)>0.00001)print *,305
if (abs(a16-0)>0.00001)print *,306
if (abs(a17-2)>0.00001)print *,307
if (abs(a18-2)>0.00001)print *,308
if (abs(real(o'10000000000')-2.0 )>0.00001)print *,309
if (abs(real(b'01000000000000000000000000000000')-2.0 )>0.00001)print *,310
if (n30/=4) print *,214
if (n19/=4) print *,215
if (n20/=4) print *,216
if (n21/=4) print *,214
if (n22/=4) print *,215
if (n23/=4) print *,216
if (n24/=8) print *,217
if (n25/=8) print *,218
if (n26/=8) print *,219
if (n27/=16) print *,220
if (n28/=16) print *,221
if (n29/=16) print *,222
if (any(abs(a01-1)>0.0001))print *,101
if (any(abs(a02-1)>0.0001))print *,102
if (any(abs(a03-1)>0.0001))print *,103
if (any(abs(a05-1)>0.0001))print *,105
if (any(abs(a06-1)>0.0001))print *,106
if (any(abs(a07-1)>0.0001))print *,107
if (any(abs(a08-[1,2,3])>0.0001))print *,108
if (k1/=0)print *,114
if (k2/=0)print *,115
if (n01/=4) print *,200
if (n02/=8) print *,201
if (n03/=16) print *,202
if (kind(real(b1))/=4)print *,301
if (n04/=4) print *,203
if (n05/=8) print *,204
if (n06/=16) print *,205
if (n07/=4) print *,206
if (n08/=4) print *,207
if (n09/=4) print *,208
if (n10/=8) print *,206
if (n11/=8) print *,207
if (n12/=8) print *,208
if (n13/=16) print *,209
if (n14/=16) print *,210
if (n15/=16) print *,211
if (n16/=4) print *,212
if (n17/=4) print *,213
if (n18/=4) print *,214
end
call s1
print *,'pass'
end
