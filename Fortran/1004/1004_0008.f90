call err8
call err16
call err32
end
subroutine err8
real(4),parameter::r=1
real(4),parameter::r2=2
real(8),parameter::d=1
real(8),parameter::d2=2
real(16),parameter::q=1
real(16),parameter::q2=2
complex(4)::c1= (-r,r2)
complex(4)::c2= (-d,d2)
complex(4)::c3= (-q,q2)
complex(4)::c4= (r2,+r)
complex(4)::c5= (d2,+d)
complex(4)::c6= (q2,+q)
print *,c1,c2,c3,c4,c5,c6
end
subroutine err16
real(4),parameter::r=1
real(4),parameter::r2=2
real(8),parameter::d=1
real(8),parameter::d2=2
real(16),parameter::q=1
real(16),parameter::q2=2
complex(8)::c1= (-r,r2)
complex(8)::c2= (-d,d2)
complex(8)::c3= (-q,q2)
complex(8)::c4= (r2,+r)
complex(8)::c5= (d2,+d)
complex(8)::c6= (q2,+q)
print *,c1,c2,c3,c4,c5,c6
end
subroutine err32
real(4),parameter::r=1
real(4),parameter::r2=2
real(8),parameter::d=1
real(8),parameter::d2=2
real(16),parameter::q=1
real(16),parameter::q2=2
complex(16)::c1= (-r,r2)
complex(16)::c2= (-d,d2)
complex(16)::c3= (-q,q2)
complex(16)::c4= (r2,+r)
complex(16)::c5= (d2,+d)
complex(16)::c6= (q2,+q)
print *,c1,c2,c3,c4,c5,c6
end
