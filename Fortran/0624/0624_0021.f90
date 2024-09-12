subroutine s1
dimension bb(3:6,4:5)
dimension b01(3:6,4:5),b02(3:6,4:5),b03(3:6,4:5)
dimension b11(3:6,4:5),b12(3:6,4:5),b13(3:6,4:5)
dimension kb01(2),kb02(2),kb03(2)
dimension kb11(2),kb12(2),kb13(2)
parameter(aaa= 1.234567 )
parameter ( bb = aaa  )
parameter ( a01 = dble(aaa) )
parameter ( a02 = real(aaa) )
parameter ( a03 = cmplx(aaa) )
parameter ( b01 = dble(bb) )
parameter ( b02 = real(bb) )
parameter ( b03 = cmplx(bb) )
parameter ( ia01 = kind( dble(aaa) ) ) 
parameter ( ia02 = kind( real(aaa) ) ) 
parameter ( ia03 = kind( cmplx(aaa) ) ) 
parameter ( ib01 = kind( dble(bb) ) ) 
parameter ( ib02 = kind( real(bb) ) ) 
parameter ( ib03 = kind( cmplx(bb) ) ) 
parameter ( kb01 = lbound( dble(bb) ) ) 
parameter ( kb02 = lbound( real(bb) ) ) 
parameter ( kb03 = lbound( cmplx(bb) ) ) 
 a11 = dble(aaa )
 a12 = real(aaa )
 a13 = cmplx(aaa )
 b11 = dble(bb )
 b12 = real(bb )
 b13 = cmplx(bb )
 ia11 = kind( dble(aaa ) ) 
 ia12 = kind( real(aaa ) ) 
 ia13 = kind( cmplx(aaa ) ) 
 ib11 = kind( dble(bb ) ) 
 ib12 = kind( real(bb ) ) 
 ib13 = kind( cmplx(bb ) ) 
 kb11 = lbound( dble(bb ) ) 
 kb12 = lbound( real(bb ) ) 
 kb13 = lbound( cmplx(bb ) ) 

if (abs(a01-a11)>0.0000001)print *,101 
if (abs(a02-a12)>0.0000001)print *,102 
if (abs(a03-a13)>0.0000001)print *,103 
if (any(abs(b01-b11)>0.0000001))print *,201 
if (any(abs(b02-b12)>0.0000001))print *,202 
if (any(abs(b03-b13)>0.0000001))print *,203 
if (       ia01/=ia11)print *,301 
if (       ia02/=ia12)print *,302 
if (       ia03/=ia13)print *,303 
if (       ib01/=ib11)print *,401 
if (       ib02/=ib12)print *,402 
if (       ib03/=ib13)print *,403 
if (any( kb01/=kb11))print *,501 
if (any( kb02/=kb12))print *,502 
if (any( kb03/=kb13))print *,503 

end
call s1
print *,'pass'
end
