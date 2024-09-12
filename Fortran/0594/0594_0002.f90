integer,parameter::x(1)   = findloc([1.0,2.0,3.0,4.0,5.0,7.0,8.0,9.0,10.0],5)
integer,parameter::x2 = findloc([1_8,2_8,3_8,4_8,5_8,6_8,7_8,8_8,9_8,10_8],0,1)
integer,parameter::x3(3)  = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0)
integer,parameter::x4(3)  = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),4)
integer,parameter::x5(3)  = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),14,mask=.true.)
integer,parameter::x6(3)  = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,mask=.false.)
integer,parameter::x7(3)  = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),-1,mask=.true.)
integer,parameter::x8(3)  = findloc(reshape([1.0,2.0,3.1,4.1,4.6,5.6,6.8,7.9,8.6,9.1,10.1,11.2,12.2],[2,3,2]),12.3,mask=.false.)
integer,parameter::x8_1(3)  = findloc(reshape([.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.],[2,3,2]),.false.)
integer,parameter::x9(3)  = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),-7,mask=reshape([.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.],[2,3,2]))
integer,parameter::x10(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,mask=reshape([.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.],[2,3,2]))
integer,parameter::x11(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,mask=reshape([.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.],[2,3,2]))
integer,parameter::x12(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,mask=reshape([.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.],[2,3,2]))
integer,parameter::x13(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,kind=4,mask=reshape([.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.],[2,3,2]))
integer,parameter::x14(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,kind=4,mask=reshape([.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.],[2,3,2]))
integer,parameter::x15(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,kind=4,mask=reshape([.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.],[2,3,2]),back=.true.)
integer,parameter::x16(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,kind=4,mask=reshape([.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.],[2,3,2]),back=.true.)
integer,parameter::x17(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,kind=4,mask=reshape([.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.],[2,3,2]),back=.true.)
integer,parameter::x18(3,2) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),11,dim=1,kind=4,mask=reshape([.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.],[2,3,2]),back=.true.)
integer,parameter::x19(3,2) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,dim=1,kind=4,mask=reshape([.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.,.true.],[2,3,2]),back=.true.)
integer,parameter::x20(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,kind=4,back=.true.)
integer,parameter::x21(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,kind=4,back=.false.)
integer,parameter::x22(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,kind=4,back=.true.)
integer,parameter::x23(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,kind=4,back=.false.)
integer,parameter::x24(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,back=.false.)
integer,parameter::x25(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,back=.true.)
integer,parameter::x26(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,back=.false.)
integer,parameter::x27(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,back=.true.)
integer,parameter::x28(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,mask=.true.,back=.true.)
integer,parameter::x29(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,mask=.false.,back=.true.)
integer,parameter::x30(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,mask=.true.,back=.true.)
integer,parameter::x31(3) = findloc(reshape([1,2,3,4,4,5,6,7,8,9,10,11,12],[2,3,2]),0,mask=.false.,back=.true.)
if(any(x.ne.5))print*,"101"
if(x2.ne.0)print*,"102",x2
if(any(x3.ne.[0,0,0]))print*,"103",x3
if(any(x4.ne.[2,2,1]))print*,"104",x4
if(any(x5.ne.[0,0,0]))print*,"105",x5
if(any(x6.ne.[0,0,0]))print*,"106",x6
if(any(x7.ne.[0,0,0]))print*,"107",x7
if(any(x8.ne.[0,0,0]))print*,"108",x8
if(any(x8_1.ne.[0,0,0]))print*,"908",x8_1
if(any(x9.ne.[0,0,0]))print*,"109",x9
if(any(x10.ne.[0,0,0]))print*,"110",x10
if(any(x11.ne.[0,0,0]))print*,"111",x11
if(any(x12.ne.[0,0,0]))print*,"112",x12
if(any(x13.ne.[0,0,0]))print*,"113",x13
if(any(x14.ne.[0,0,0]))print*,"114",x14
if(any(x15.ne.[0,0,0]))print*,"115",x15
if(any(x16.ne.[0,0,0]))print*,"116",x16
if(any(x17.ne.[0,0,0]))print*,"117",x17
if(any(x18.ne.reshape([0,0,0,0,0,2],[3,2])))print*,"118",x18
if(any(x19.ne.reshape([0,0,0,0,0,0],[3,2])))print*,"119",x19
if(any(x20.ne.[0,0,0]))print*,"120",x20
if(any(x21.ne.[0,0,0]))print*,"121",x21
if(any(x22.ne.[0,0,0]))print*,"122",x22
if(any(x23.ne.[0,0,0]))print*,"123",x23
if(any(x24.ne.[0,0,0]))print*,"124",x24
if(any(x25.ne.[0,0,0]))print*,"125",x25
if(any(x26.ne.[0,0,0]))print*,"126",x26
if(any(x27.ne.[0,0,0]))print*,"127",x27
if(any(x28.ne.[0,0,0]))print*,"128",x28
if(any(x29.ne.[0,0,0]))print*,"129",x29
if(any(x28.ne.[0,0,0]))print*,"130",x28
if(any(x29.ne.[0,0,0]))print*,"131",x29
if(any(x30.ne.[0,0,0]))print*,"132",x30
if(any(x31.ne.[0,0,0]))print*,"133",x31
print*,"pass"
end
