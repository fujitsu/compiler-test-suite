subroutine s1
integer,parameter::v1(2,1,2,3,1,1,1)=reshape([(k,k=1,12)],[2,1,2,3,1,1,1])
integer,parameter::v2(2,1,2,3,1,1,1)=v1
logical(1),parameter::y1(2,1,2,3,1,1,1)=v2==v2
logical(2),parameter::y2(2,1,2,3,1,1,1)=v2==v2
logical(4),parameter::y3(2,1,2,3,1,1,1)=v2==v2
logical(8),parameter::y4(2,1,2,3,1,1,1)=v2==v2
logical(1),parameter::y5(2,1,2,3,1,1,0)=.true.
logical(2),parameter::y6(2,1,2,3,1,1,0)=.true.
logical(4),parameter::y7(2,1,2,3,1,1,0)=.true.
logical(8),parameter::y8(2,1,2,3,1,1,0)=.true.
integer,parameter::x1               =count(v2==v2)
integer,parameter::x2               =count(y1)
integer,parameter::x3               =count(y2)
integer,parameter::x4               =count(y3)
integer,parameter::x5               =count(y4)
integer,parameter::x6               =count(y5)
integer,parameter::x7               =count(y6)
integer,parameter::x8               =count(y7)
integer,parameter::x9               =count(y8)
integer,parameter::v3(1,1,2,1,2,3,1,1,1)=1
logical(8),parameter::y9(1,1,2,1,2,3,1,1,1)=v3==v3
integer,parameter::x10              =count(y9)
integer(8),parameter::x11(1,2,3,1,1,1)=count(mask=y1,dim=1_8)
integer(8),parameter::x12(1,2,3,1,1,1)=count(y2,1_8)
integer(8),parameter::x13(1,2,3,1,1,1)=count(dim=1_8,mask=y3)
integer(8),parameter::x14(1,2,3,1,1,1)=count(dim=1_8,mask=y4)
integer(1),parameter::x15(2,2,3,1,1,1)=count(mask=y1,dim=2_8)
integer(1),parameter::x16(2,2,3,1,1,1)=count(y2,2_8)
integer(1),parameter::x17(2,2,3,1,1,1)=count(dim=2_8,mask=y3)
integer(1),parameter::x18(2,2,3,1,1,1)=count(dim=2_8,mask=y4)
integer(2),parameter::x19(2,1,2,3,1,1)=count(mask=y1,dim=6_8)
integer(2),parameter::x20(2,1,2,3,1,1)=count(y2,6_8)
integer(2),parameter::x21(2,1,2,3,1,1)=count(dim=6_8,mask=y3)
integer(2),parameter::x22(2,1,2,3,1,1)=count(dim=6_8,mask=y4)
integer(4),parameter::x23(2,1,2,3,1,1)=count(mask=y1,dim=7_1)
integer(4),parameter::x24(2,1,2,3,1,1)=count(y2,7_1)
integer(4),parameter::x25(2,1,2,3,1,1)=count(dim=7_1,mask=y3)
integer(4),parameter::x26(2,1,2,3,1,1)=count(dim=7_1,mask=y4)

integer(8),parameter::z11(1,2,3,1,1,1)=count(mask=y1,dim=1_8,kind=8)
integer(8),parameter::z12(1,2,3,1,1,1)=count(y2,1_8,kind=8)
integer(8),parameter::z13(1,2,3,1,1,1)=count(dim=1_8,mask=y3,kind=8)
integer(8),parameter::z14(1,2,3,1,1,1)=count(dim=1_8,mask=y4,kind=8)
integer(1),parameter::z15(2,2,3,1,1,1)=count(mask=y1,dim=2_8,kind=8)
integer(1),parameter::z16(2,2,3,1,1,1)=count(y2,2_8,kind=8)
integer(1),parameter::z17(2,2,3,1,1,1)=count(dim=2_8,mask=y3,kind=8)
integer(1),parameter::z18(2,2,3,1,1,1)=count(dim=2_8,mask=y4,kind=8)
integer(2),parameter::z19(2,1,2,3,1,1)=count(mask=y1,dim=6_8,kind=8)
integer(2),parameter::z20(2,1,2,3,1,1)=count(y2,6_8,kind=8)
integer(2),parameter::z21(2,1,2,3,1,1)=count(dim=6_8,mask=y3,kind=8)
integer(2),parameter::z22(2,1,2,3,1,1)=count(dim=6_8,mask=y4,kind=8)
integer(4),parameter::z23(2,1,2,3,1,1)=count(mask=y1,dim=7_1,kind=8)
integer(4),parameter::z24(2,1,2,3,1,1)=count(y2,7_1,kind=8)
integer(4),parameter::z25(2,1,2,3,1,1)=count(dim=7_1,mask=y3,kind=8)
integer(4),parameter::z26(2,1,2,3,1,1)=count(dim=7_1,mask=y4,kind=8)

integer(8),parameter::w11=kind(count(mask=y1,dim=1_8,kind=8))
integer(8),parameter::w12=kind(count(y2,1_8,kind=8))
integer(8),parameter::w13=kind(count(dim=1_8,mask=y3,kind=8))
integer(8),parameter::w14=kind(count(dim=1_8,mask=y4,kind=8))
integer(1),parameter::w15=kind(count(mask=y1,dim=2_8,kind=8))
integer(1),parameter::w16=kind(count(y2,2_8,kind=8))
integer(1),parameter::w17=kind(count(dim=2_8,mask=y3,kind=8))
integer(1),parameter::w18=kind(count(dim=2_8,mask=y4,kind=8))
integer(2),parameter::w19=kind(count(mask=y1,dim=6_8,kind=8))
integer(2),parameter::w20=kind(count(y2,6_8,kind=8))
integer(2),parameter::w21=kind(count(dim=6_8,mask=y3,kind=8))
integer(2),parameter::w22=kind(count(dim=6_8,mask=y4,kind=8))
integer(4),parameter::w23=kind(count(mask=y1,dim=7_1,kind=8))
integer(4),parameter::w24=kind(count(y2,7_1,kind=8))
integer(4),parameter::w25=kind(count(dim=7_1,mask=y3,kind=8))
integer(4),parameter::w26=kind(count(dim=7_1,mask=y4,kind=8))
integer,parameter::q1               =kind(count(v2==v2,kind=8_8))
integer,parameter::q2               =kind(count(y1,kind=8_8))
integer,parameter::q3               =kind(count(y2,kind=8_8))
integer,parameter::q4               =kind(count(y3,kind=8_8))
integer,parameter::q5               =kind(count(y4,kind=8_8))
integer,parameter::q6               =kind(count(y5,kind=8_8))
integer,parameter::q7               =kind(count(y6,kind=8_8))
integer,parameter::q8               =kind(count(y7,kind=8_8))
integer,parameter::q9               =kind(count(y8,kind=8_8))
if (x1/=12) print *,101
if (x2/=12) print *,102
if (x3/=12) print *,103
if (x4/=12) print *,104
if (x5/=12) print *,105
if (x6/=0) print *,106,x6
if (x7/=0) print *,107
if (x8/=0) print *,108
if (x9/=0) print *,109
if (x10/=12) print *,110
if (any(x11/=2)) print *,111
if (any(x12/=2)) print *,112
if (any(x13/=2)) print *,113
if (any(x14/=2)) print *,114
if (any(x15/=1)) print *,115
if (any(x16/=1)) print *,116
if (any(x17/=1)) print *,117
if (any(x18/=1)) print *,118
if (any(x19/=1)) print *,119
if (any(x20/=1)) print *,120
if (any(x21/=1)) print *,121
if (any(x22/=1)) print *,122
if (any(x23/=1)) print *,123
if (any(x24/=1)) print *,124
if (any(x25/=1)) print *,125
if (any(x26/=1)) print *,126
if (any(z11/=2)) print *,111
if (any(z12/=2)) print *,112
if (any(z13/=2)) print *,113
if (any(z14/=2)) print *,1114
if (any(z15/=1)) print *,1115
if (any(z16/=1)) print *,1116
if (any(z17/=1)) print *,1117
if (any(z18/=1)) print *,1118
if (any(z19/=1)) print *,1119
if (any(z20/=1)) print *,1120
if (any(z21/=1)) print *,1121
if (any(z22/=1)) print *,1122
if (any(z23/=1)) print *,1123
if (any(z24/=1)) print *,1124
if (any(z25/=1)) print *,1125
if (any(z26/=1)) print *,1126
if (w11/=8) print *,2111
if (w12/=8) print *,2112
if (w13/=8) print *,2113
if (w14/=8) print *,21114
if (w15/=8) print *,21115
if (w16/=8) print *,21116
if (w17/=8) print *,21117
if (w18/=8) print *,21118
if (w19/=8) print *,21119
if (w20/=8) print *,21120
if (w21/=8) print *,21121
if (w22/=8) print *,21122
if (w23/=8) print *,21123
if (w24/=8) print *,21124
if (w25/=8) print *,21125
if (w26/=8) print *,21126

if (q1/=8) print *,32111
if (q2/=8) print *,32112
if (q3/=8) print *,32113
if (q4/=8) print *,321114
if (q5/=8) print *,321115
if (q6/=8) print *,321116
if (q7/=8) print *,321117
if (q8/=8) print *,321118
if (q9/=8) print *,321119
end
call  s1
print *,'pass'
end
