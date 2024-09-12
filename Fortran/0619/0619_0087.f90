module m1
implicit none
integer(1) x62
integer(2) x63,x72,x73
integer(4) x64,x74,x82,x83,x84
integer(8) x65,x75,x85,x92,x93,x94,x95
real(4)  x01,x02,x03,x04,x05,x66,x76,x86,x96
real(8)  x06,x11,x12,x13,x14,x15,x16,x67,x77,x87,x97
real(16) x07,x17,x21,x22,x23,x24,x25,x26,x27,x68,x78,x88,x98
complex(4) x08,x32,x33,x34,x35,x36,x39,x69,x79,x89,x99
complex(8) x09,x18,x19,x37,x40,x42,x43,x44,x45,x46,x47,x49,x50,x70,x80,x90,x100
complex(16) x10,x20,x28,x29,x31,x38,x41,x48,x51,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x71,x81,x91,x101
integer(1),parameter::i1=3
integer(2),parameter::i2=3
integer(4),parameter::i4=3
integer(8),parameter::i8=3
real(4),parameter::r4=3.
real(8),parameter::r8=3.
real(16),parameter::rq=3.
complex(4),parameter::c4=(3,3.)
complex(8),parameter::c8=(3,3)
complex(16),parameter::cq=(3,3)
 parameter(x01=r4**i1 )
 parameter(x02=r4**i2 )
 parameter(x03=r4**i4 )
 parameter(x04=r4**i8 )
 parameter(x05=r4**r4 )
 parameter(x06=r4**r8 )
 parameter(x07=r4**rq )
 parameter(x08=r4**c4 )
 parameter(x09=r4**c8 )
 parameter(x10=r4**cq )

 parameter(x11=r8**i1 )
 parameter(x12=r8**i2 )
 parameter(x13=r8**i4 )
 parameter(x14=r8**i8 )
 parameter(x15=r8**r4 )
 parameter(x16=r8**r8 )
 parameter(x17=r8**rq )
 parameter(x18=r8**c4 )
 parameter(x19=r8**c8 )
 parameter(x20=r8**cq )

 parameter(x21=rq**i1 )
 parameter(x22=rq**i2 )
 parameter(x23=rq**i4 )
 parameter(x24=rq**i8 )
 parameter(x25=rq**r4 )
 parameter(x26=rq**r8 )
 parameter(x27=rq**rq )
 parameter(x28=rq**c4 )
 parameter(x29=rq**c8 )
 parameter(x31=rq**cq )

 parameter(x32=c4**i1 )
 parameter(x33=c4**i2 )
 parameter(x34=c4**i4 )
 parameter(x35=c4**i8 )
 parameter(x36=c4**r4 )
 parameter(x37=c4**r8 )
 parameter(x38=c4**rq )
 parameter(x39=c4**c4 )
 parameter(x40=c4**c8 )
 parameter(x41=c4**cq )

 parameter(x42=c8**i1 )
 parameter(x43=c8**i2 )
 parameter(x44=c8**i4 )
 parameter(x45=c8**i8 )
 parameter(x46=c8**r4 )
 parameter(x47=c8**r8 )
 parameter(x48=c8**rq )
 parameter(x49=c8**c4 )
 parameter(x50=c8**c8 )
 parameter(x51=c8**cq )

 parameter(x52=cq**i1 )
 parameter(x53=cq**i2 )
 parameter(x54=cq**i4 )
 parameter(x55=cq**i8 )
 parameter(x56=cq**r4 )
 parameter(x57=cq**r8 )
 parameter(x58=cq**rq )
 parameter(x59=cq**c4 )
 parameter(x60=cq**c8 )
 parameter(x61=cq**cq )
!
 parameter(x62=i1**i1 )
 parameter(x63=i1**i2 )
 parameter(x64=i1**i4 )
 parameter(x65=i1**i8 )
 parameter(x66=i1**r4 )
 parameter(x67=i1**r8 )
 parameter(x68=i1**rq )
 parameter(x69=i1**c4 )
 parameter(x70=i1**c8 )
 parameter(x71=i1**cq )

 parameter(x72=i2**i1 )
 parameter(x73=i2**i2 )
 parameter(x74=i2**i4 )
 parameter(x75=i2**i8 )
 parameter(x76=i2**r4 )
 parameter(x77=i2**r8 )
 parameter(x78=i2**rq )
 parameter(x79=i2**c4 )
 parameter(x80=i2**c8 )
 parameter(x81=i2**cq )

 parameter(x82=i4**i1 )
 parameter(x83=i4**i2 )
 parameter(x84=i4**i4 )
 parameter(x85=i4**i8 )
 parameter(x86=i4**r4 )
 parameter(x87=i4**r8 )
 parameter(x88=i4**rq )
 parameter(x89=i4**c4 )
 parameter(x90=i4**c8 )
 parameter(x91=i4**cq )

 parameter(x92=i8**i1 )
 parameter(x93=i8**i2 )
 parameter(x94=i8**i4 )
 parameter(x95=i8**i8 )
 parameter(x96=i8**r4 )
 parameter(x97=i8**r8 )
 parameter(x98=i8**rq )
 parameter(x99=i8**c4 )
 parameter(x100=i8**c8)
 parameter(x101=i8**cq)
interface x
 module procedure si1,si2,si4,si8
 module procedure sr4,sr8,srq
 module procedure sc4,sc8,scq
end interface
contains
subroutine chk(i1,i2,i4,i8,r4,r8,rq,c4,c8,cq)
integer(1)::i1
integer(2)::i2
integer(4)::i4
integer(8)::i8
real(4)::r4
real(8)::r8
real(16)::rq
complex(4)::c4
complex(8)::c8
complex(16)::cq
integer::n
n=1
 call x(r4**i1,x01,n);n=n+1
 call x(r4**i2,x02,n);n=n+1
 call x(r4**i4,x03,n);n=n+1
 call x(r4**i8,x04,n);n=n+1
 call x(r4**r4,x05,n);n=n+1
 call x(r4**r8,x06,n);n=n+1
 call x(r4**rq,x07,n);n=n+1
 call x(r4**c4,x08,n);n=n+1
 call x(r4**c8,x09,n);n=n+1
 call x(r4**cq,x10,n);n=n+1

 call x(r8**i1,x11,n);n=n+1
 call x(r8**i2,x12,n);n=n+1
 call x(r8**i4,x13,n);n=n+1
 call x(r8**i8,x14,n);n=n+1
 call x(r8**r4,x15,n);n=n+1
 call x(r8**r8,x16,n);n=n+1
 call x(r8**rq,x17,n);n=n+1
 call x(r8**c4,x18,n);n=n+1
 call x(r8**c8,x19,n);n=n+1
 call x(r8**cq,x20,n);n=n+1

 call x(rq**i1,x21,n);n=n+1
 call x(rq**i2,x22,n);n=n+1
 call x(rq**i4,x23,n);n=n+1
 call x(rq**i8,x24,n);n=n+1
 call x(rq**r4,x25,n);n=n+1
 call x(rq**r8,x26,n);n=n+1
 call x(rq**rq,x27,n);n=n+1
 call x(rq**c4,x28,n);n=n+1
 call x(rq**c8,x29,n);n=n+1
 call x(rq**cq,x31,n);n=n+1

 call x(c4**i1,x32,n);n=n+1
 call x(c4**i2,x33,n);n=n+1
 call x(c4**i4,x34,n);n=n+1
 call x(c4**i8,x35,n);n=n+1
 call x(c4**r4,x36,n);n=n+1
 call x(c4**r8,x37,n);n=n+1
 call x(c4**rq,x38,n);n=n+1
 call x(c4**c4,x39,n);n=n+1
 call x(c4**c8,x40,n);n=n+1
 call x(c4**cq,x41,n);n=n+1

 call x(c8**i1,x42,n);n=n+1
 call x(c8**i2,x43,n);n=n+1
 call x(c8**i4,x44,n);n=n+1
 call x(c8**i8,x45,n);n=n+1
 call x(c8**r4,x46,n);n=n+1
 call x(c8**r8,x47,n);n=n+1
 call x(c8**rq,x48,n);n=n+1
 call x(c8**c4,x49,n);n=n+1
 call x(c8**c8,x50,n);n=n+1
 call x(c8**cq,x51,n);n=n+1

 call x(cq**i1,x52,n);n=n+1
 call x(cq**i2,x53,n);n=n+1
 call x(cq**i4,x54,n);n=n+1
 call x(cq**i8,x55,n);n=n+1
 call x(cq**r4,x56,n);n=n+1
 call x(cq**r8,x57,n);n=n+1
 call x(cq**rq,x58,n);n=n+1
 call x(cq**c4,x59,n);n=n+1
 call x(cq**c8,x60,n);n=n+1
 call x(cq**cq,x61,n);n=n+1
!
 call x(i1**i1,x62,n);n=n+1
 call x(i1**i2,x63,n);n=n+1
 call x(i1**i4,x64,n);n=n+1
 call x(i1**i8,x65,n);n=n+1
 call x(i1**r4,x66,n);n=n+1
 call x(i1**r8,x67,n);n=n+1
 call x(i1**rq,x68,n);n=n+1
 call x(i1**c4,x69,n);n=n+1
 call x(i1**c8,x70,n);n=n+1
 call x(i1**cq,x71,n);n=n+1

 call x(i2**i1,x72,n);n=n+1
 call x(i2**i2,x73,n);n=n+1
 call x(i2**i4,x74,n);n=n+1
 call x(i2**i8,x75,n);n=n+1
 call x(i2**r4,x76,n);n=n+1
 call x(i2**r8,x77,n);n=n+1
 call x(i2**rq,x78,n);n=n+1
 call x(i2**c4,x79,n);n=n+1
 call x(i2**c8,x80,n);n=n+1
 call x(i2**cq,x81,n);n=n+1

 call x(i4**i1,x82,n);n=n+1
 call x(i4**i2,x83,n);n=n+1
 call x(i4**i4,x84,n);n=n+1
 call x(i4**i8,x85,n);n=n+1
 call x(i4**r4,x86,n);n=n+1
 call x(i4**r8,x87,n);n=n+1
 call x(i4**rq,x88,n);n=n+1
 call x(i4**c4,x89,n);n=n+1
 call x(i4**c8,x90,n);n=n+1
 call x(i4**cq,x91,n);n=n+1

 call x(i8**i1,x92,n);n=n+1
 call x(i8**i2,x93,n);n=n+1
 call x(i8**i4,x94,n);n=n+1
 call x(i8**i8,x95,n);n=n+1
 call x(i8**r4,x96,n);n=n+1
 call x(i8**r8,x97,n);n=n+1
 call x(i8**rq,x98,n);n=n+1
 call x(i8**c4,x99,n);n=n+1
 call x(i8**c8,x100,n);n=n+1
 call x(i8**cq,x101,n);n=n+1
end subroutine
subroutine si1(i11,i12,n)
integer(1),intent(in)::i11,i12
integer,intent(in)::n
if (i11/=i12)print *,101,n,i11,i12
end subroutine
subroutine si2(i11,i12,n)
integer(2),intent(in)::i11,i12
integer,intent(in)::n
if (i11/=i12)print *,102,n,i11,i12
end subroutine
subroutine si4(i11,i12,n)
integer(4),intent(in)::i11,i12
integer,intent(in)::n
if (i11/=i12)print *,103,n,i11,i12
end subroutine
subroutine si8(i11,i12,n)
integer(8),intent(in)::i11,i12
integer,intent(in)::n
if (i11/=i12)print *,104,n,i11,i12
end subroutine
subroutine sr4(i11,i12,n)
real(4)   ,intent(in)::i11,i12
integer,intent(in)::n
if (i11/=i12)print *,201,n,i11,i12
end subroutine
subroutine sr8(i11,i12,n)
real(8),intent(in)::i11,i12
integer,intent(in)::n
if (i11/=i12)print *,202,n,i11,i12
end subroutine
subroutine srq(i11,i12,n)
real(16),intent(in)::i11,i12
integer,intent(in)::n
if (i11/=i12)print *,203,n,i11,i12
end subroutine
subroutine sc4(i11,i12,n)
complex(4)   ,intent(in)::i11,i12
integer,intent(in)::n
if (i11/=i12)print *,301,n,i11,i12
end subroutine
subroutine sc8(i11,i12,n)
complex(8),intent(in)::i11,i12
integer,intent(in)::n
select case (n)
  case(9,18,19,36,39,45,46,48,49,69,79,89,99) 
  if (abs(i11-i12)>0.0000001_8)then 
     print *,9302,n,i11,i12
     write(6,'(z16.16, 1x , z16.16)') i11
     write(6,'(z16.16, 1x , z16.16)') i12
  endif
case default
  if (i11/=i12)print *,302,n,i11,i12
end select
end subroutine
subroutine scq(i11,i12,n)
complex(16),intent(in)::i11,i12
integer,intent(in)::n
if (i11/=i12)print *,303,n,i11,i12
end subroutine
end
use m1
call       chk(i1,i2,i4,i8,r4,r8,rq,c4,c8,cq)
print *,'pass'
end
