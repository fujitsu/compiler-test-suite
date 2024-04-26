subroutine s1
integer,parameter::v1(2,1,2,3,1,1,1)=reshape([(k,k=1,12)],[2,1,2,3,1,1,1])
integer,parameter::v2(2,1,2,3,1,1,1)=v1
logical(1),parameter::y1(2,1,2,3,1,1,1)=v2==v2
logical(2),parameter::y2(2,1,2,3,1,1,1)=v2==v2
logical(4),parameter::y3(2,1,2,3,1,1,1)=v2==v2
logical(8),parameter::y4(2,1,2,3,1,1,1)=v2==v2
logical(1),parameter::y5(2,1,2,3,1,1,0)=.false.
logical(2),parameter::y6(2,1,2,3,1,1,0)=.false.
logical(4),parameter::y7(2,1,2,3,1,1,0)=.false.
logical(8),parameter::y8(2,1,2,3,1,1,0)=.false.
logical,parameter::x1               =all(v2==v2)
logical,parameter::x2               =all(y1)
logical,parameter::x3               =all(y2)
logical,parameter::x4               =all(y3)
logical,parameter::x5               =all(y4)
logical,parameter::x6               =all(y5)
logical,parameter::x7               =all(y6)
logical,parameter::x8               =all(y7)
logical,parameter::x9               =all(y8)
integer,parameter::v3(1,1,2,1,2,3,1,1,1)=1
logical(8),parameter::y9(1,1,2,1,2,3,1,1,1)=v3==v3
logical,parameter::x10              =all(y9)
logical(8),parameter::x11(1,2,3,1,1,1)=all(mask=y1,dim=1_8)
logical(8),parameter::x12(1,2,3,1,1,1)=all(y2,1_8)
logical(8),parameter::x13(1,2,3,1,1,1)=all(dim=1_8,mask=y3)
logical(8),parameter::x14(1,2,3,1,1,1)=all(dim=1_8,mask=y4)
logical(1),parameter::x15(2,2,3,1,1,1)=all(mask=y1,dim=2_8)
logical(1),parameter::x16(2,2,3,1,1,1)=all(y2,2_8)
logical(1),parameter::x17(2,2,3,1,1,1)=all(dim=2_8,mask=y3)
logical(1),parameter::x18(2,2,3,1,1,1)=all(dim=2_8,mask=y4)
logical(2),parameter::x19(2,1,2,3,1,1)=all(mask=y1,dim=6_8)
logical(2),parameter::x20(2,1,2,3,1,1)=all(y2,6_8)
logical(2),parameter::x21(2,1,2,3,1,1)=all(dim=6_8,mask=y3)
logical(2),parameter::x22(2,1,2,3,1,1)=all(dim=6_8,mask=y4)
logical(4),parameter::x23(2,1,2,3,1,1)=all(mask=y1,dim=7_1)
logical(4),parameter::x24(2,1,2,3,1,1)=all(y2,7_1)
logical(4),parameter::x25(2,1,2,3,1,1)=all(dim=7_1,mask=y3)
logical(4),parameter::x26(2,1,2,3,1,1)=all(dim=7_1,mask=y4)
if (.not.x1) print *,101
if (.not.x2) print *,102
if (.not.x3) print *,103
if (.not.x4) print *,104
if (.not.x5) print *,105
if (.not.x6) print *,106
if (.not.x7) print *,107
if (.not.x8) print *,108
if (.not.x9) print *,109
if (.not.x10) print *,110
if (any(.not.x11)) print *,111
if (any(.not.x12)) print *,112
if (any(.not.x13)) print *,113
if (any(.not.x14)) print *,114
if (any(.not.x15)) print *,115
if (any(.not.x16)) print *,116
if (any(.not.x17)) print *,117
if (any(.not.x18)) print *,118
if (any(.not.x19)) print *,119
if (any(.not.x20)) print *,120
if (any(.not.x21)) print *,121
if (any(.not.x22)) print *,122
if (any(.not.x23)) print *,123
if (any(.not.x24)) print *,124
if (any(.not.x25)) print *,125
if (any(.not.x26)) print *,126
end
call s1
print *,'pass'
end
