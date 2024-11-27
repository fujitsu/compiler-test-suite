call err8
call err16
call err32
end
subroutine err8
real(4),parameter::r(1)=(/1/)
real(8),parameter::d(1)=(/1/)
real(16),parameter::q(1)=(/1/)
complex(4)::c1(1)
complex(4)::c2(1)
complex(4)::c3(1)
c1 = (r,1.)
c2 = (d,1.)
c3 = (q,1.)
print *,c1,c2,c3
end
subroutine err16
real(4),parameter::r(1)=(/1/)
real(8),parameter::d(1)=(/1/)
real(16),parameter::q(1)=(/1/)
complex(8)::c1(1)
complex(8)::c2(1)
complex(8)::c3(1)
c1 = (r,1.)
c2 = (d,1.)
c3 = (q,1.)
print *,c1,c2,c3
end
subroutine err32
real(4),parameter::r(1)=(/1/)
real(8),parameter::d(1)=(/1/)
real(16),parameter::q(1)=(/1/)
complex(16)::c1(1)
complex(16)::c2(1)
complex(16)::c3(1)
c1 = (r ,1.)
c2 = (d,1.)
c3 = (q,1.)
print *,c1,c2,c3
end
