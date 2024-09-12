integer,parameter::x(1)   = findloc([1,2,3,4,5],5)
integer,parameter::x2(1)  = findloc([1,2,3,4,5],0)
integer,parameter::x2_2  = findloc([1,2,3,4,5],0,dim=1)
integer,parameter::x2_3  = findloc([1,2,3,4,5],12,dim=1,mask=.true.)
integer,parameter::x2_4  = findloc([1,2,3,4,5],12,dim=1,kind=4,mask=.true.)
integer,parameter::x3(2)  = findloc(reshape([1,2,3,4],[2,2]),0)
integer,parameter::x4(2)  = findloc(reshape([1,2,3,4],[2,2]),4)
integer,parameter::x3_1(2)  = findloc(reshape([1,2,3,4],[2,2]),0,dim=1)
integer,parameter::x4_1(2)  = findloc(reshape([1,2,3,4],[2,2]),4,dim=1)
integer,parameter::x5(2)  = findloc(reshape([1,2,3,4],[2,2]),0,mask=.true.)
integer,parameter::x6(2)  = findloc(reshape([1,2,3,4],[2,2]),0,mask=.false.)
integer,parameter::x7(2)  = findloc(reshape([1,2,3,4],[2,2]),2,mask=.true.)
integer,parameter::x8(2)  = findloc(reshape([1,2,3,4],[2,2]),2,mask=.false.)
integer,parameter::x9(2)  = findloc(reshape([1,2,3,4],[2,2]),2,mask=reshape([.true.,.true.,.true.,.true.],[2,2]))
integer,parameter::x10(2) = findloc(reshape([1,2,3,4],[2,2]),2,mask=reshape([.true.,.false.,.true.,.false.],[2,2]))
integer,parameter::x11(2) = findloc(reshape([1,2,3,4],[2,2]),0,mask=reshape([.true.,.true.,.true.,.true.],[2,2]))
integer,parameter::x12(2) = findloc(reshape([1,2,3,4],[2,2]),0,mask=reshape([.false.,.false.,.true.,.false.],[2,2]))
integer,parameter::x13(2) = findloc(reshape([1,2,3,4],[2,2]),2,kind=4,mask=reshape([.true.,.true.,.true.,.true.],[2,2]))
integer,parameter::x14(2) = findloc(reshape([1,2,3,4],[2,2]),0,kind=4,mask=reshape([.true.,.true.,.true.,.true.],[2,2]))
integer,parameter::x15(2) = findloc(reshape([1,2,3,4],[2,2]),0,kind=4,mask=reshape([.true.,.false.,.true.,.false.],[2,2]),back=.true.)
integer,parameter::x16(2) = findloc(reshape([1,2,3,4],[2,2]),2,kind=4,mask=reshape([.true.,.false.,.true.,.false.],[2,2]),back=.true.)
integer,parameter::x17(2) = findloc(reshape([1,2,3,4],[2,2]),2,kind=4,mask=reshape([.true.,.true.,.true.,.false.],[2,2]),back=.true.)
integer,parameter::x18(2) = findloc(reshape([1,2,3,4],[2,2]),0,dim=1,kind=4,mask=reshape([.true.,.true.,.true.,.false.],[2,2]),back=.true.)
integer,parameter::x19(2) = findloc(reshape([1,2,3,4],[2,2]),2,dim=1,kind=4,mask=reshape([.true.,.true.,.true.,.false.],[2,2]),back=.true.)
integer,parameter::x20(2) = findloc(reshape([1,2,3,4],[2,2]),0,kind=4,back=.true.)
integer,parameter::x21(2) = findloc(reshape([1,2,3,4],[2,2]),0,kind=4,back=.false.)
integer,parameter::x22(2) = findloc(reshape([1,2,3,2],[2,2]),2,kind=4,back=.true.)
integer,parameter::x23(2) = findloc(reshape([1,2,3,4],[2,2]),2,kind=4,back=.false.)
integer,parameter::x24(2) = findloc(reshape([1,2,3,4],[2,2]),0,back=.false.)
integer,parameter::x25(2) = findloc(reshape([1,2,3,4],[2,2]),0,back=.true.)
integer,parameter::x26(2) = findloc(reshape([1,2,3,2],[2,2]),2,back=.false.)
integer,parameter::x27(2) = findloc(reshape([1,2,3,2],[2,2]),2,back=.true.)
integer,parameter::x28(2) = findloc(reshape([1,2,3,4],[2,2]),0,mask=.true.,back=.true.)
integer,parameter::x29(2) = findloc(reshape([1,2,3,4],[2,2]),0,mask=.false.,back=.true.)
integer,parameter::x30(2) = findloc(reshape([1,2,3,2],[2,2]),2,mask=.true.,back=.true.)
integer,parameter::x31(2) = findloc(reshape([1,2,3,2],[2,2]),2,mask=.false.,back=.true.)
integer,parameter::x32(2) = findloc(reshape([1,2,3,4],[2,2]),0,mask=.true.,back=.false.)
integer,parameter::x33(2) = findloc(reshape([1,2,3,4],[2,2]),0,mask=.false.,back=.false.)
integer,parameter::x34(2) = findloc(reshape([1,2,3,2],[2,2]),2,mask=.true.,back=.false.)
integer,parameter::x35(2) = findloc(reshape([1,2,3,2],[2,2]),2,mask=.false.,back=.false.)
if(any(x.ne.5))print*,"101"
if(any(x2.ne.0))print*,"102",x2
if(x2_2.ne.0)print*,"902",x2_2
if(x2_3.ne.0)print*,"912",x2_3
if(x2_4.ne.0)print*,"912",x2_4
if(any(x3.ne.[0,0]))print*,"103",x3
if(any(x4.ne.[2,2]))print*,"104",x4
if(any(x3_1.ne.[0,0]))print*,"903",x3_1
if(any(x4_1.ne.[0,2]))print*,"904",x4_1
if(any(x5.ne.[0,0]))print*,"105",x5
if(any(x6.ne.[0,0]))print*,"106",x6
if(any(x7.ne.[2,1]))print*,"107",x7
if(any(x8.ne.[0,0]))print*,"108",x8
if(any(x9.ne.[2,1]))print*,"109",x9
if(any(x10.ne.[0,0]))print*,"110",x10
if(any(x11.ne.[0,0]))print*,"111",x11
if(any(x12.ne.[0,0]))print*,"112",x12
if(any(x13.ne.[2,1]))print*,"113",x13
if(any(x14.ne.[0,0]))print*,"114",x14
if(any(x15.ne.[0,0]))print*,"115",x15
if(any(x16.ne.[0,0]))print*,"116",x16
if(any(x17.ne.[2,1]))print*,"117",x17
if(any(x18.ne.[0,0]))print*,"118",x18
if(any(x19.ne.[2,0]))print*,"119",x19
if(any(x20.ne.[0,0]))print*,"120",x20
if(any(x21.ne.[0,0]))print*,"121",x21
if(any(x22.ne.[2,2]))print*,"122",x22
if(any(x23.ne.[2,1]))print*,"123",x23
if(any(x24.ne.[0,0]))print*,"124",x24
if(any(x25.ne.[0,0]))print*,"125",x25
if(any(x26.ne.[2,1]))print*,"126",x26
if(any(x27.ne.[2,2]))print*,"127",x27
if(any(x28.ne.[0,0]))print*,"128",x28
if(any(x29.ne.[0,0]))print*,"129",x29
if(any(x28.ne.[0,0]))print*,"128",x28
if(any(x29.ne.[0,0]))print*,"129",x29
if(any(x30.ne.[2,2]))print*,"127",x30
if(any(x31.ne.[0,0]))print*,"127",x31
if(any(x32.ne.[0,0]))print*,"134",x32
if(any(x33.ne.[0,0]))print*,"125",x33
if(any(x34.ne.[2,1]))print*,"130",x34
if(any(x35.ne.[0,0]))print*,"131",x35
print*,"pass"
end
