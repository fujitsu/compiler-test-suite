call err8
call err16
call err32
end
subroutine err8
integer(1),parameter::i1(1)=(/1/)
integer(2),parameter::i2(1)=(/1/)
integer(4),parameter::i4(1)=(/1/)
integer(8),parameter::i8(1)=(/1/)
complex(4)::c1(1)
complex(4)::c2(1)
complex(4)::c3(1)
complex(4)::c4(1)
c1 = (1., i1)
c2 = (1., i2)
c3 = (1., i4)
c4 = (1., i8)
print *,c1,c2,c3,c4
end
subroutine err16
integer(1),parameter::i1(1)=(/1/)
integer(2),parameter::i2(1)=(/1/)
integer(4),parameter::i4(1)=(/1/)
integer(8),parameter::i8(1)=(/1/)
complex(8)::c1(1)
complex(8)::c2(1)
complex(8)::c3(1)
complex(8)::c4(1)
c1 = (1., i1)
c2 = (1., i2)
c3 = (1., i4)
c4 = (1., i8)
print *,c1,c2,c3,c4
end
subroutine err32
integer(1),parameter::i1(1)=(/1/)
integer(2),parameter::i2(1)=(/1/)
integer(4),parameter::i4(1)=(/1/)
integer(8),parameter::i8(1)=(/1/)
complex(16)::c1(1)
complex(16)::c2(1)
complex(16)::c3(1)
complex(16)::c4(1)
c1 = (1., i1)
c2 = (1., i2)
c3 = (1., i4)
c4 = (1., i8)
print *,c1,c2,c3,c4
end
