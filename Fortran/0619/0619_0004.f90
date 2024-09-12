subroutine  s1
integer,parameter,dimension(2,3)::k=1
integer,parameter,dimension(2,3)::kkk=4
integer,parameter,dimension(0)::kk=1
integer(8),parameter::m4=1,m8=4,m16=8
integer,parameter,dimension(2,3):: a01= int(1.)
integer,parameter,dimension(2,3):: a02= int(a=1.)
integer,parameter,dimension(2,3):: a03= int(a=k)
integer,parameter,dimension(0):: a04= real(a=kk)
complex(4),parameter,dimension(3)::b1=[(1,2),(3,4),(5,6)]
complex(8),parameter,dimension(3)::b2=[(1,2),(3,4),(5,6)]
complex(16),parameter,dimension(3)::b3=[(1,2),(3,4),(5,6)]
integer,parameter::k1=size(a04)
integer,parameter::k2=size(real(a=kk))
integer,parameter,dimension(2,3):: a05= int(a=k,kind=4)
integer,parameter,dimension(2,3):: a06= int(kind=4,A=k)
integer,parameter,dimension(2,3):: a07= int(kind=kkk(2,3),A=1.)
integer,parameter,dimension(3):: a08= int(kind=4,a=[1,2,3])
integer,parameter:: n01= kind(int(kind=1,a=[1,2,3]))
integer,parameter:: n02= kind(int(kind=4,a=[1,2,3]))
integer,parameter:: n03= kind(int(kind=8,a=[1,2,3]))
integer,parameter:: n04= kind(int(a=b1))
integer,parameter:: n05= kind(int(a=b2))
integer,parameter:: n06= kind(int(a=b3))
integer,parameter:: n07= kind(int(b1,kind=1_8))
integer,parameter:: n08= kind(int(b2,kind=m4))
integer,parameter:: n09= kind(int(b3,kind=8_8))
integer,parameter:: n10= kind(int(b1,kind=4_8))
integer,parameter:: n11= kind(int(b2,kind=m8))
integer,parameter:: n12= kind(int(b3,kind=4_8))
integer,parameter:: n13= kind(int(b1,kind=8_8))
integer,parameter:: n14= kind(int(b2,kind=8_8))
integer,parameter:: n15= kind(int(b3,kind=m16))
integer,parameter:: n16= kind(int(b1,kind=1_1))
integer,parameter:: n17= kind(int(b2,kind=1_1))
integer,parameter:: n18= kind(int(b3,kind=1_1))
integer,parameter:: n30= kind(int(b'1'))
integer,parameter:: n19= kind(int(o'1'))
integer,parameter:: n20= kind(int(z'1'))
integer,parameter:: n21= kind(int(b'1',4_8))
integer,parameter:: n22= kind(int(o'1',4_8))
integer,parameter:: n23= kind(int(z'1',4_8))
integer,parameter:: n24= kind(int(b'1',8_8))
integer,parameter:: n25= kind(int(o'1',8_8))
integer,parameter:: n26= kind(int(z'1',8_8))
integer,parameter:: n27= kind(int(b'1',1_8))
integer,parameter:: n28= kind(int(o'1',1_8))
integer,parameter:: n29= kind(int(z'1',1_8))
integer(4),parameter::a11=int(z'40000000',4)
integer(8),parameter::a12=int(z'40000000 00000000',8)
integer(2),parameter::a13=int(z'4000',2)
integer(4),parameter::a14=int(z'40000000')
integer(4),parameter::a15=int(z'40000000 00000000')
integer(8),parameter::a16=int(z'40000000 00000000 00000000 00000000')
integer(4),parameter::a17=int(o'10000000000')
integer(4),parameter::a18=int(b'01000000000000000000000000000000')
if (a11/=1073741824)print *,301
if (a12/=4611686018427387904_8)print *,302,a12
if (a13/=16384)print *,303,a13
if (a14/=1073741824)print *,304
if (a15/=0)print *,305
if (a16/=0)print *,306
if (a17/=1073741824)print *,307
if (a18/=1073741824)print *,308
if (int(o'10000000000')/=1073741824)print *,309
if (int(b'01000000000000000000000000000000')/=1073741824 )print *,310
if (n30/=4) print *,214
if (n19/=4) print *,215
if (n20/=4) print *,216
if (n21/=4) print *,214
if (n22/=4) print *,215
if (n23/=4) print *,216
if (n24/=8) print *,217
if (n25/=8) print *,218
if (n26/=8) print *,219
if (n27/=1) print *,220
if (n28/=1) print *,221
if (n29/=1) print *,222
if (any(abs(a01-1)>0.0001))print *,101
if (any(abs(a02-1)>0.0001))print *,102
if (any(abs(a03-1)>0.0001))print *,103
if (any(abs(a05-1)>0.0001))print *,105
if (any(abs(a06-1)>0.0001))print *,106
if (any(abs(a07-1)>0.0001))print *,107
if (any(abs(a08-[1,2,3])>0.0001))print *,108
if (k1/=0)print *,114
if (k2/=0)print *,115
if (n01/=1) print *,200
if (n02/=4) print *,201
if (n03/=8) print *,202
if (kind(real(b1))/=4)print *,301
if (n04/=4) print *,203
if (n05/=4) print *,204
if (n06/=4) print *,205
if (n07/=1) print *,206
if (n08/=1) print *,207
if (n09/=8) print *,208
if (n10/=4) print *,206
if (n11/=4) print *,207
if (n12/=4) print *,208
if (n13/=8) print *,209
if (n14/=8) print *,210
if (n15/=8) print *,211
if (n16/=1) print *,212
if (n17/=1) print *,213
if (n18/=1) print *,214
end
call s1
print *,'pass'
end
