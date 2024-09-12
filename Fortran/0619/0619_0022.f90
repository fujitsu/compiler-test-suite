subroutine s1
complex,parameter::c01=cmplx(1,2)
complex,parameter::c02=cmplx(1,2._4)
complex,parameter::c03=cmplx(1,2._8)
complex,parameter::c04=cmplx(1,2._16)
integer,parameter::x01=kind(cmplx(1,2))
integer,parameter::x02=kind(cmplx(1,2._4))
integer,parameter::x03=kind(cmplx(1,2._8))
integer,parameter::x04=kind(cmplx(1,2._16))
integer,parameter::x05=kind(cmplx(1,2,kind=8))
integer,parameter::x06=kind(cmplx(1,2._4,kind=8))
integer,parameter::x07=kind(cmplx(1,2._8,kind=8))
integer,parameter::x08=kind(cmplx(1,2._16,kind=8))
if (abs(c01-(1,2))>0.0001)print *,101
if (abs(c02-(1,2))>0.0001)print *,102
if (abs(c03-(1,2))>0.0001)print *,103
if (abs(c04-(1,2))>0.0001)print *,104
if (x01/=4)print *,201
if (x02/=4)print *,202
if (x03/=4)print *,203
if (x04/=4)print *,204
if (x05/=8)print *,401
if (x06/=8)print *,402
if (x07/=8)print *,403
if (x08/=8)print *,404
if (4/=kind(cmplx(1,2)))print *,301
if (4/=kind(cmplx(1,2._4)))print *,302
if (4/=kind(cmplx(1,2._8)))print *,303
if (4/=kind(cmplx(1,2._16)))print *,304
end
call s1
print *,'pass'
end
