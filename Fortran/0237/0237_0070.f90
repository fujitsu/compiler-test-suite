subroutine s1
integer(8),parameter:: a1(4)= reshape([(k,k=-24,-2,+1)],[4])
integer(8),parameter:: a2(4)= reshape([(k,k=4,24)],[4])

integer,parameter::k4=4
real(k4),parameter,dimension(4)::b1=a1,b2=a2
complex(k4),parameter,dimension(4)::d1=cmplx(b1,b1,kind=k4),d2=cmplx(b2,b2,kind=k4)
end
call s1
print *,'pass'
end
