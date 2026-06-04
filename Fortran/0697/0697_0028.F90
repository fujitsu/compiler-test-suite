character(*),parameter::b='abcdeg'
character(*),parameter::c(3)='abcdeg'
character(*),parameter::d(3,3,3)='abcdeg'
integer:: a(2)
type x
  integer x1
  integer x2
end type
type (x)::xv,xa(2,3)
parameter (i01=sizeof(a))
parameter (i02=sizeof(1))
parameter (i03=sizeof('123'))
parameter (i04=sizeof('123'(2:3)))
parameter (i05=sizeof(b))
parameter (i06=sizeof(b(2:4)))
parameter (i07=sizeof(c))
parameter (i08=sizeof('123'//b))
parameter (i09=sizeof(xv))
#if defined(__x86_64__) 
#if __frt_version__ >= 0x340
parameter (i10=sizeof(int(x'12')))
#else
parameter (i10=sizeof(int(12)))
#endif
#else
#if __frt_version__ >= 0x820
parameter (i10=sizeof(int(x'12')))
#else
parameter (i10=sizeof(int(12)))
#endif
#endif
parameter (i11=sizeof(x=xv))
parameter (i12=sizeof(X=xa))
parameter (i13=sizeof(d(2:3,1:3,2:3)(4:5)))
if (i01/=8)print *,"fail"
if (i02/=4)print *,"fail"
if (i03/=3)print *,"fail"
if (i04/=2)print *,"fail"
if (i05/=6)print *,"fail"
if (i06/=3)print *,"fail"
if (i07/=18)print *,"fail"
if (i08/=9)print *,"fail"
if (i09/=8)print *,"fail"
if (i10/=4)print *,"fail"
if (i11/=8)print *,"fail"
if (i12/=48)print *,"fail"
if (i13/=24)print *,"fail"
print *,'pass'
end
