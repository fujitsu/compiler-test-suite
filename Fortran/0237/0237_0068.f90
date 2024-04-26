subroutine s1
logical,parameter::t=.true.
logical(8),parameter:: a1(3,4)= t
logical(8),parameter:: a2(4,3)= t
logical(8),parameter:: a3(3)= t
logical(8),parameter:: a4(4)= t

logical(8),parameter:: x1(3,3)=matmul(a1,a2)
logical(8),parameter:: x2(3)=matmul(a4,a2)
logical(8),parameter:: x3(4)=matmul(a3,a1)
logical(8)          :: y1(3,3),y2(3),y3(4)
y1=matmul(a1,a2)
y2=matmul(a4,a2)
y3=matmul(a3,a1)
if (any(x1.neqv.y1))print *,101
if (any(x2.neqv.y2))print *,102
if (any(x3.neqv.y3))print *,103
end
subroutine s2
logical,parameter::t=.false.
logical(8),parameter:: a1(3,4)= t
logical(8),parameter:: a2(4,3)= t
logical(8),parameter:: a3(3)= t
logical(8),parameter:: a4(4)= t

logical(8),parameter:: x1(3,3)=matmul(a1,a2)
logical(8),parameter:: x2(3)=matmul(a4,a2)
logical(8),parameter:: x3(4)=matmul(a3,a1)
logical(8)          :: y1(3,3),y2(3),y3(4)
y1=matmul(a1,a2)
y2=matmul(a4,a2)
y3=matmul(a3,a1)
if (any(x1.neqv.y1))print *,101
if (any(x2.neqv.y2))print *,102
if (any(x3.neqv.y3))print *,103
end
call s1
call s2
print *,'pass'
end
