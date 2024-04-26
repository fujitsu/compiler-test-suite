subroutine s1
integer(8),parameter:: a1(4)= reshape([(k,k=-24,-2,+1)],[4])
integer(8),parameter:: a2(4)= reshape([(k,k=4,24)],[4])

integer(1),parameter,dimension(4)::c1=a1,c2=a2
integer(4),parameter,dimension(4)::c3=a1,c4=a2
integer(8),parameter,dimension(4)::c5=a1,c6=a2
real(16),parameter,dimension(4)::b1=a1,b2=a2
real(4),parameter,dimension(4)::b3=a1,b4=a2
real(8),parameter,dimension(4)::b5=a1,b6=a2
complex(4),parameter,dimension(-4:-1)::d1=cmplx(b1,b1,4),d2=cmplx(b2,b2,4)
complex(8),parameter,dimension(-4:-1)::d3=cmplx(b1,b1,8),d4=cmplx(b2,b2,8)
complex(16),parameter,dimension(-4:-1)::d5=cmplx(b1,b1,16),s6=cmplx(b2,b2,16)
real(16),parameter,dimension(4)::x1=dot_product(b1,b2)
real(16),parameter,dimension(4)::x2=dot_product(vector_b=b4,vector_a=b1)
real(16),parameter,dimension(4)::x3=dot_product(vEctor_a=b3,Vector_b=b2)
real(16),parameter,dimension(4)::x4=dot_product(b5,b2)
integer(4),parameter::z1=kind(dot_product(b1,b2))
integer(4),parameter::z2=kind(dot_product(vector_b=b4,vector_a=b1))
integer(4),parameter::z3=kind(dot_product(vEctor_a=b3,Vector_b=b2))
integer(4),parameter::z4=kind(dot_product(b5,b2))
real(16),dimension(4):: y1,y2,y3,y4
y1=dot_product(b1,b2)
y2=dot_product(b1,b4)
y3=dot_product(b3,b2)
y4=dot_product(b5,b2)
if (any(abs(x1-y1)>0.00001))print *,101
if (any(abs(x2-y2)>0.00001))print *,102
if (any(abs(x3-y3)>0.00001))print *,103
if (any(abs(x4-y4)>0.00001))print *,104
kz1=kind(dot_product(b1,b2))
kz2=kind(dot_product(vector_b=b4,vector_a=b1))
kz3=kind(dot_product(vEctor_a=b3,Vector_b=b2))
kz4=kind(dot_product(b5,b2))
if (z1/=16)print *,201
if (z2/=16)print *,202
if (z3/=16)print *,203
if (z4/=16)print *,204
if (z1/=kz1)print *,205
if (z2/=kz2)print *,206
if (z3/=kz3)print *,207
if (z4/=kz4)print *,208
end
call s1
print *,'pass'
end
