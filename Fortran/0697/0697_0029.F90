integer:: a(2)
dimension f(2)
call s01(e,f)
call s02(e,f)
print *,'pass'
end
subroutine s02(e,f)
character(*),parameter::b='abcdeg'
character(*),parameter::c(3)='abcdeg'
character(*),parameter::d(3,3,3)='abcdeg'
integer:: a(2)
dimension f(2)
type x
  integer x1
  integer x2
end type
type (x)::xv,xa(2,3)
parameter(kk=8)
i01=kind(sizeof(a))
i02=kind(sizeof(1))
i03=kind(sizeof('123'))
i04=kind(sizeof('123'(2:3)))
i05=kind(sizeof(b))
i06=kind(sizeof(b(2:4)))
i07=kind(sizeof(c))
i08=kind(sizeof('123'//b))
i09=kind(sizeof(xv))
i10=kind(sizeof(int(12)))
i11=kind(sizeof(x=xv))
i12=kind(sizeof(X=xa))
i13=kind(sizeof(d(2:3,1:3,2:3)(4:5)))
i14=kind(sizeof(e))
i15=kind(sizeof(f))
i16=kind(sizeof(f(2)))
if (i01/=kk)print *,"fail"
if (i02/=kk)print *,"fail"
if (i03/=kk)print *,"fail"
if (i04/=kk)print *,"fail"
if (i05/=kk)print *,"fail"
if (i06/=kk)print *,"fail"
if (i07/=kk)print *,"fail"
if (i08/=kk)print *,"fail"
if (i09/=kk)print *,"fail"
if (i10/=kk)print *,"fail"
if (i11/=kk)print *,"fail"
if (i12/=kk)print *,"fail"
if (i13/=kk)print *,"fail"
if (i14/=kk)print *,"fail"
if (i15/=kk)print *,"fail"
if (i16/=kk)print *,"fail"
end
subroutine s01(e,f)
character(*),parameter::b='abcdeg'
character(*),parameter::c(3)='abcdeg'
character(*),parameter::d(3,3,3)='abcdeg'
integer:: a(2)
dimension f(2)
type x
  integer x1
  integer x2
end type
type (x)::xv,xa(2,3)
parameter(kk=8)
parameter(i01=kind(sizeof(a)))
parameter(i02=kind(sizeof(1)))
parameter(i03=kind(sizeof('123')))
parameter(i04=kind(sizeof('123'(2:3))))
parameter(i05=kind(sizeof(b)))
parameter(i06=kind(sizeof(b(2:4))))
parameter(i07=kind(sizeof(c)))
parameter(i08=kind(sizeof('123'//b)))
parameter(i09=kind(sizeof(xv)))
parameter(i10=kind(sizeof(int(  12 ))))
parameter(i11=kind(sizeof(x=xv)))
parameter(i12=kind(sizeof(X=xa)))
parameter(i13=kind(sizeof(d(2:3,1:3,2:3)(4:5))))
parameter(i14=kind(sizeof(e)))
parameter(i15=kind(sizeof(f)))
parameter(i16=kind(sizeof(f(2))))
if (i01/=kk)print *,"fail"
if (i02/=kk)print *,"fail"
if (i03/=kk)print *,"fail"
if (i04/=kk)print *,"fail"
if (i05/=kk)print *,"fail"
if (i06/=kk)print *,"fail"
if (i07/=kk)print *,"fail"
if (i08/=kk)print *,"fail"
if (i09/=kk)print *,"fail"
if (i10/=kk)print *,"fail"
if (i11/=kk)print *,"fail"
if (i12/=kk)print *,"fail"
if (i13/=kk)print *,"fail"
if (i14/=kk)print *,"fail"
if (i15/=kk)print *,"fail"
if (i16/=kk)print *,"fail"
end
