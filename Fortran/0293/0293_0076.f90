module m1
 type z
   integer::z1
 end type
 type x
   integer :: d
   integer,pointer::p1(:,:,:)
   complex,pointer::p2(:,:,:)
   character(:),pointer::p3(:,:,:)
   type(z),pointer::p4(:,:,:)
 end type
 integer,target::p1(2,4,3)
complex,target::p2(2,4,3)
character(1),target::p3(2,4,3)
type (z),target::p4(2,4,3)
integer::n=2
 contains
subroutine s1(p11,p21,p31,p41,w2,w5,w6,w7,w8,w9)
integer,pointer::p11(:,:,:)
integer,pointer::p12(:,:,:)
complex,pointer::p21(:,:,:)
complex,pointer::p22(:,:,:)
character(:),pointer::p31(:,:,:)
character(:),pointer::p32(:,:,:)
type (z),pointer::p41(:,:,:)
type (z),pointer::p42(:,:,:)
type (x):: w1,w2
type (x),pointer:: w3,w6
type (x),allocatable::w4,w7
type (x):: w5(2)
type (x),pointer:: w8(:)
type (x),allocatable::w9(:)
!
allocate(w3,w6,w4,w7,w8(2:3),w9(2:3))
!
w9(n+1)%p1(n:,n:,n:)=>p1
if (any(lbound(w9(n+1)%p1)/=n))print *,009101
if (any(w9(n+1)%p1/=1))print *,009102
w9(n+1)%p2(n:,n:,n:)=>p2
if (any(lbound(w9(n+1)%p2)/=n))print *,009201
if (any(abs(w9(n+1)%p2-(1,1))>0.00901))print *,009202
w9(n+1)%p3(n:,n:,n:)=>p3
if (any(lbound(w9(n+1)%p3)/=n))print *,009301
if (any(w9(n+1)%p3/='x'))print *,009302
if (len(w9(n+1)%p3)/=1)print *,009303
w9(n+1)%p4(n:,n:,n:)=>p4
if (any(lbound(w9(n+1)%p4)/=n))print *,009401
if (any(w9(n+1)%p4%z1/=1))print *,009402
!
w8(n+1)%p1(n:,n:,n:)=>p1
if (any(lbound(w8(n+1)%p1)/=n))print *,008101
if (any(w8(n+1)%p1/=1))print *,008102
w8(n+1)%p2(n:,n:,n:)=>p2
if (any(lbound(w8(n+1)%p2)/=n))print *,008201
if (any(abs(w8(n+1)%p2-(1,1))>0.00801))print *,008202
w8(n+1)%p3(n:,n:,n:)=>p3
if (any(lbound(w8(n+1)%p3)/=n))print *,008301
if (any(w8(n+1)%p3/='x'))print *,008302
if (len(w8(n+1)%p3)/=1)print *,008303
w8(n+1)%p4(n:,n:,n:)=>p4
if (any(lbound(w8(n+1)%p4)/=n))print *,008401
if (any(w8(n+1)%p4%z1/=1))print *,008402
!
w7%p1(n:,n:,n:)=>p1
if (any(lbound(w7%p1)/=n))print *,007101
if (any(w7%p1/=1))print *,007102
w7%p2(n:,n:,n:)=>p2
if (any(lbound(w7%p2)/=n))print *,007201
if (any(abs(w7%p2-(1,1))>0.00701))print *,004202
w7%p3(n:,n:,n:)=>p3
if (any(lbound(w7%p3)/=n))print *,007301
if (any(w7%p3/='x'))print *,007302
if (len(w7%p3)/=1)print *,007303
w7%p4(n:,n:,n:)=>p4
if (any(lbound(w7%p4)/=n))print *,007401
if (any(w7%p4%z1/=1))print *,007402
!
w6%p1(n:,n:,n:)=>p1
if (any(lbound(w6%p1)/=n))print *,006101
if (any(w6%p1/=1))print *,006102
w6%p2(n:,n:,n:)=>p2
if (any(lbound(w6%p2)/=n))print *,006201
if (any(abs(w6%p2-(1,1))>0.00601))print *,004202
w6%p3(n:,n:,n:)=>p3
if (any(lbound(w6%p3)/=n))print *,006301
if (any(w6%p3/='x'))print *,006302
if (len(w6%p3)/=1)print *,006303
w6%p4(n:,n:,n:)=>p4
if (any(lbound(w6%p4)/=n))print *,006401
if (any(w6%p4%z1/=1))print *,006402
!
w5(n)%p1(n:,n:,n:)=>p1
if (any(lbound(w5(n)%p1)/=n))print *,005101
if (any(w5(n)%p1/=1))print *,005102
w5(n)%p2(n:,n:,n:)=>p2
if (any(lbound(w5(n)%p2)/=n))print *,005201
if (any(abs(w5(n)%p2-(1,1))>0.00501))print *,005202
w5(n)%p3(n:,n:,n:)=>p3
if (any(lbound(w5(n)%p3)/=n))print *,005301
if (any(w5(n)%p3/='x'))print *,005302
if (len(w5(n)%p3)/=1)print *,005303
w5(n)%p4(n:,n:,n:)=>p4
if (any(lbound(w5(n)%p4)/=n))print *,005401
if (any(w5(n)%p4%z1/=1))print *,005402
!
w4%p1(n:,n:,n:)=>p1
if (any(lbound(w4%p1)/=n))print *,004101
if (any(w4%p1/=1))print *,004102
w4%p2(n:,n:,n:)=>p2
if (any(lbound(w4%p2)/=n))print *,004201
if (any(abs(w4%p2-(1,1))>0.00401))print *,004202
w4%p3(n:,n:,n:)=>p3
if (any(lbound(w4%p3)/=n))print *,004301
if (any(w4%p3/='x'))print *,004302
if (len(w4%p3)/=1)print *,004303
w4%p4(n:,n:,n:)=>p4
if (any(lbound(w4%p4)/=n))print *,004401
if (any(w4%p4%z1/=1))print *,004402
!
w3%p1(n:,n:,n:)=>p1
if (any(lbound(w3%p1)/=n))print *,003101
if (any(w3%p1/=1))print *,003102
w3%p2(n:,n:,n:)=>p2
if (any(lbound(w3%p2)/=n))print *,003201
if (any(abs(w3%p2-(1,1))>0.00301))print *,00202
w3%p3(n:,n:,n:)=>p3
if (any(lbound(w3%p3)/=n))print *,003301
if (any(w3%p3/='x'))print *,003302
if (len(w3%p3)/=1)print *,003303
w3%p4(n:,n:,n:)=>p4
if (any(lbound(w3%p4)/=n))print *,003401
if (any(w3%p4%z1/=1))print *,003402
!
w2%p1(n:,n:,n:)=>p1
if (any(lbound(w2%p1)/=n))print *,002101
if (any(w2%p1/=1))print *,002102
w2%p2(n:,n:,n:)=>p2
if (any(lbound(w2%p2)/=n))print *,002201
if (any(abs(w2%p2-(1,1))>0.00201))print *,00202
w2%p3(n:,n:,n:)=>p3
if (any(lbound(w2%p3)/=n))print *,002301
if (any(w2%p3/='x'))print *,002302
if (len(w2%p3)/=1)print *,002303
w2%p4(n:,n:,n:)=>p4
if (any(lbound(w2%p4)/=n))print *,002401
if (any(w2%p4%z1/=1))print *,002402
!
w1%p1(n:,n:,n:)=>p1
if (any(lbound(w1%p1)/=n))print *,01101
if (any(w1%p1/=1))print *,01102
w1%p2(n:,n:,n:)=>p2
if (any(lbound(w1%p2)/=n))print *,01201
if (any(abs(w1%p2-(1,1))>0.0101))print *,00202
w1%p3(n:,n:,n:)=>p3
if (any(lbound(w1%p3)/=n))print *,01301
if (any(w1%p3/='x'))print *,01302
if (len(w1%p3)/=1)print *,01303
w1%p4(n:,n:,n:)=>p4
if (any(lbound(w1%p4)/=n))print *,01401
if (any(w1%p4%z1/=1))print *,01402
!
p11(n:,n:,n:)=>p1
if (any(lbound(p11)/=n))print *,00101
if (any(p11/=1))print *,00102
p12(n:,n:,n:)=>p1
if (any(lbound(p12)/=n))print *,00111
if (any(p12/=1))print *,00112
p21(n:,n:,n:)=>p2
if (any(lbound(p21)/=n))print *,00201
if (any(abs(p21-(1,1))>0.0001))print *,00202
p22(n:,n:,n:)=>p2
if (any(lbound(p22)/=n))print *,00211
if (any(abs(p22-(1,1))>0.0001))print *,00212
p31(n:,n:,n:)=>p3
if (any(lbound(p31)/=n))print *,00301
if (any(p31/='x'))print *,00302
if (len(p31)/=1)print *,00303
p32(n:,n:,n:)=>p3
if (any(lbound(p32)/=n))print *,00311
if (any(p32/='x'))print *,00312
if (len(p32)/=1)print *,00313
p41(n:,n:,n:)=>p4
if (any(lbound(p41)/=n))print *,00401
if (any(p41%z1/=1))print *,00402
p42(n:,n:,n:)=>p4
if (any(lbound(p42)/=n))print *,00411
if (any(p42%z1/=1))print *,00412
end subroutine
subroutine set
p1=1
p2=(1,1)
p3='x'
p4=z(1)
end subroutine
end

use m1
integer,pointer::p11(:,:,:)
complex,pointer::p21(:,:,:)
character(:),pointer::p31(:,:,:)
type (z),pointer::p41(:,:,:)
type (x):: w2
type (x):: w5(2)
type (x),pointer:: w6
type (x),allocatable::w7
type (x),pointer:: w8(:)
type (x),allocatable::w9(:)
call set
call       s1(p11,p21,p31,p41,w2,w5,w6,w7,w8,w9)
print *,'pass'
end
