subroutine s1
logical(8),parameter:: a1(0:4)= .true.
logical(8),parameter:: a2(0:4)= a1

logical(1),parameter,dimension(0:4)::b1=a1,b2=a2
logical(4),parameter,dimension(0:4)::b3=a1,b4=a2
logical(8),parameter,dimension(0:4)::b5=a1,b6=a2
logical(4),parameter,dimension(0:4)::x1=dot_product(b1,b2)
logical(4),parameter,dimension(0:4)::x2=dot_product(vector_b=b4,vector_a=b1)
logical(4),parameter,dimension(0:4)::x3=dot_product(vEctor_a=b3,Vector_b=b2)
logical(4),parameter,dimension(0:4)::x4=dot_product(b5,b2)
integer(4),parameter::z1=kind(dot_product(b1,b2))
integer(4),parameter::z2=kind(dot_product(vector_b=b4,vector_a=b1))
integer(4),parameter::z3=kind(dot_product(vEctor_a=b3,Vector_b=b2))
integer(4),parameter::z4=kind(dot_product(b5,b2))
logical(4),dimension(0:4):: y1,y2,y3,y4
y1=dot_product(b1,b2)
y2=dot_product(b1,b4)
y3=dot_product(b3,b2)
y4=dot_product(b5,b2)
if (any(x1.neqv.y1))print *,101
if (any(x2.neqv.y2))print *,102
if (any(x3.neqv.y3))print *,103
if (any(x4.neqv.y4))print *,104
kz1=kind(dot_product(b1,b2))
kz2=kind(dot_product(vector_b=b4,vector_a=b1))
kz3=kind(dot_product(vEctor_a=b3,Vector_b=b2))
kz4=kind(dot_product(b5,b2))
if (z1/=1)print *,201
if (z2/=4)print *,202
if (z3/=4)print *,203
if (z4/=8)print *,204
if (z1/=kz1)print *,205
if (z2/=kz2)print *,206
if (z3/=kz3)print *,207
if (z4/=kz4)print *,208
end
call s1
print *,'pass'
end
