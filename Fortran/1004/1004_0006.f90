call err8
call err16
call err32
end
subroutine err8
integer(1),parameter::i1=1
integer(1),parameter::i12=2
integer(2),parameter::i2=1
integer(2),parameter::i22=2
integer(4),parameter::i4=1
integer(4),parameter::i42=2
integer(8),parameter::i8=1
integer(8),parameter::i82=2
complex(4)::c1= (-i1,i12)
complex(4)::c2= (-i2,i22)
complex(4)::c3= (-i4,i42)
complex(4)::c4= (-i8,i82)
complex(4)::c5= (i12,+i1)
complex(4)::c6= (i22,+i2)
complex(4)::c7= (i42,+i4)
complex(4)::c8= (i82,+i8)
print *,c1,c2,c3,c4,c5,c6,c7,c8
end
subroutine err16
integer(1),parameter::i1=1
integer(1),parameter::i12=2
integer(2),parameter::i2=1
integer(2),parameter::i22=2
integer(4),parameter::i4=1
integer(4),parameter::i42=2
integer(8),parameter::i8=1
integer(8),parameter::i82=2
complex(8)::c1= (-i1,i12)
complex(8)::c2= (-i2,i22)
complex(8)::c3= (-i4,i42)
complex(8)::c4= (-i8,i82)
complex(8)::c5= (i12,+i1)
complex(8)::c6= (i22,+i2)
complex(8)::c7= (i42,+i4)
complex(8)::c8= (i82,+i8)
print *,c1,c2,c3,c4,c5,c6,c7,c8
end
subroutine err32
integer(1),parameter::i1=1
integer(1),parameter::i12=2
integer(2),parameter::i2=1
integer(2),parameter::i22=2
integer(4),parameter::i4=1
integer(4),parameter::i42=2
integer(8),parameter::i8=1
integer(8),parameter::i82=2
complex(16)::c1= (-i1,i12)
complex(16)::c2= (-i2,i22)
complex(16)::c3= (-i4,i42)
complex(16)::c4= (-i8,i82)
complex(16)::c5= (i12,+i1)
complex(16)::c6= (i22,+i2)
complex(16)::c7= (i42,+i4)
complex(16)::c8= (i82,+i8)
print *,c1,c2,c3,c4,c5,c6,c7,c8
end
