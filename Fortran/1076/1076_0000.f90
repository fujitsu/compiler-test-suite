call aaa
call bbb
call ccc
print *,'pass'
end
subroutine aaa
real(4),parameter::r1=1.0
real(4),parameter::r2=2.0
complex(4) c
c=cmplx(r1,r2)
if(c.ne.(r1,r2)) print *,'fail'
end
subroutine bbb
real(8),parameter::d1=1.0d0
real(8),parameter::d2=2.0d0
complex(8) dc
dc=cmplx(d1,d2)
if(dc.ne.(d1,d2)) print *,'fail'
end
subroutine ccc
real(16),parameter::q1=1.0q0
real(16),parameter::q2=2.0q0
complex(16) qc
qc=cmplx(q1,q2)
if(qc.ne.(q1,q2)) print *,'fail'
end

