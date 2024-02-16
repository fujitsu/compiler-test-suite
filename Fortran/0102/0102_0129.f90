integer,parameter,DIMENSION(3,2)::x = reshape((/45,9,45,45,44,45/),(/3,2/))
integer,parameter::k(2) = maxloc(x,dim=1,mask=reshape([.false.,.false.,.false.,.false.,.false.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k1(2) = maxloc(x,dim=1,mask=reshape([.false.,.false.,.false.,.false.,.false.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k2(2) = maxloc(x,dim=1,mask=reshape([.false.,.false.,.false.,.false.,.true.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k3(2) = maxloc(x,dim=1,mask=reshape([.false.,.false.,.false.,.false.,.true.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k4(2) = maxloc(x,dim=1,mask=reshape([.false.,.false.,.false.,.true.,.false.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k5(2) = maxloc(x,dim=1,mask=reshape([.false.,.false.,.false.,.true.,.false.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k6(2) = maxloc(x,dim=1,mask=reshape([.false.,.false.,.false.,.true.,.true.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k7(2) = maxloc(x,dim=1,mask=reshape([.false.,.false.,.false.,.true.,.true.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k8(2) = maxloc(x,dim=1,mask=reshape([.false.,.false.,.true.,.false.,.false.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k9(2) = maxloc(x,dim=1,mask=reshape([.false.,.false.,.true.,.false.,.false.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k10(2) = maxloc(x,dim=1,mask=reshape([.false.,.false.,.true.,.false.,.true.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k11(2) = maxloc(x,dim=1,mask=reshape([.false.,.false.,.true.,.false.,.true.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k12(2) = maxloc(x,dim=1,mask=reshape([.false.,.false.,.true.,.true.,.false.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k13(2) = maxloc(x,dim=1,mask=reshape([.false.,.false.,.true.,.true.,.false.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k14(2) = maxloc(x,dim=1,mask=reshape([.false.,.false.,.true.,.true.,.true.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k15(2) = maxloc(x,dim=1,mask=reshape([.false.,.false.,.true.,.true.,.true.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k16(2) = maxloc(x,dim=1,mask=reshape([.false.,.true.,.false.,.false.,.false.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k17(2) = maxloc(x,dim=1,mask=reshape([.false.,.true.,.false.,.false.,.false.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k18(2) = maxloc(x,dim=1,mask=reshape([.false.,.true.,.false.,.false.,.true.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k19(2) = maxloc(x,dim=1,mask=reshape([.false.,.true.,.false.,.false.,.true.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k20(2) = maxloc(x,dim=1,mask=reshape([.false.,.true.,.false.,.true.,.false.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k21(2) = maxloc(x,dim=1,mask=reshape([.false.,.true.,.false.,.true.,.false.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k22(2) = maxloc(x,dim=1,mask=reshape([.false.,.true.,.false.,.true.,.true.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k23(2) = maxloc(x,dim=1,mask=reshape([.false.,.true.,.false.,.true.,.true.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k24(2) = maxloc(x,dim=1,mask=reshape([.false.,.true.,.true.,.false.,.false.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k25(2) = maxloc(x,dim=1,mask=reshape([.false.,.true.,.true.,.false.,.false.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k26(2) = maxloc(x,dim=1,mask=reshape([.false.,.true.,.true.,.false.,.true.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k27(2) = maxloc(x,dim=1,mask=reshape([.false.,.true.,.true.,.false.,.true.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k28(2) = maxloc(x,dim=1,mask=reshape([.false.,.true.,.true.,.true.,.false.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k29(2) = maxloc(x,dim=1,mask=reshape([.false.,.true.,.true.,.true.,.false.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k30(2) = maxloc(x,dim=1,mask=reshape([.false.,.true.,.true.,.true.,.true.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k31(2) = maxloc(x,dim=1,mask=reshape([.false.,.true.,.true.,.true.,.true.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k32(2) = maxloc(x,dim=1,mask=reshape([.true.,.false.,.false.,.false.,.false.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k33(2) = maxloc(x,dim=1,mask=reshape([.true.,.false.,.false.,.false.,.false.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k34(2) = maxloc(x,dim=1,mask=reshape([.true.,.false.,.false.,.false.,.true.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k35(2) = maxloc(x,dim=1,mask=reshape([.true.,.false.,.false.,.false.,.true.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k36(2) = maxloc(x,dim=1,mask=reshape([.true.,.false.,.false.,.true.,.false.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k37(2) = maxloc(x,dim=1,mask=reshape([.true.,.false.,.false.,.true.,.false.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k38(2) = maxloc(x,dim=1,mask=reshape([.true.,.false.,.false.,.true.,.true.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k39(2) = maxloc(x,dim=1,mask=reshape([.true.,.false.,.false.,.true.,.true.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k40(2) = maxloc(x,dim=1,mask=reshape([.true.,.false.,.true.,.false.,.false.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k41(2) = maxloc(x,dim=1,mask=reshape([.true.,.false.,.true.,.false.,.false.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k42(2) = maxloc(x,dim=1,mask=reshape([.true.,.false.,.true.,.false.,.true.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k43(2) = maxloc(x,dim=1,mask=reshape([.true.,.false.,.true.,.false.,.true.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k44(2) = maxloc(x,dim=1,mask=reshape([.true.,.false.,.true.,.true.,.false.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k45(2) = maxloc(x,dim=1,mask=reshape([.true.,.false.,.true.,.true.,.false.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k46(2) = maxloc(x,dim=1,mask=reshape([.true.,.false.,.true.,.true.,.true.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k47(2) = maxloc(x,dim=1,mask=reshape([.true.,.false.,.true.,.true.,.true.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k48(2) = maxloc(x,dim=1,mask=reshape([.true.,.true.,.false.,.false.,.false.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k49(2) = maxloc(x,dim=1,mask=reshape([.true.,.true.,.false.,.false.,.false.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k50(2) = maxloc(x,dim=1,mask=reshape([.true.,.true.,.false.,.false.,.true.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k51(2) = maxloc(x,dim=1,mask=reshape([.true.,.true.,.false.,.false.,.true.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k52(2) = maxloc(x,dim=1,mask=reshape([.true.,.true.,.false.,.true.,.false.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k53(2) = maxloc(x,dim=1,mask=reshape([.true.,.true.,.false.,.true.,.false.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k54(2) = maxloc(x,dim=1,mask=reshape([.true.,.true.,.false.,.true.,.true.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k55(2) = maxloc(x,dim=1,mask=reshape([.true.,.true.,.false.,.true.,.false.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k56(2) = maxloc(x,dim=1,mask=reshape([.true.,.true.,.true.,.false.,.false.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k57(2) = maxloc(x,dim=1,mask=reshape([.true.,.true.,.true.,.false.,.false.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k58(2) = maxloc(x,dim=1,mask=reshape([.true.,.true.,.true.,.false.,.true.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k59(2) = maxloc(x,dim=1,mask=reshape([.true.,.true.,.true.,.false.,.true.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k60(2) = maxloc(x,dim=1,mask=reshape([.true.,.true.,.true.,.true.,.false.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k61(2) = maxloc(x,dim=1,mask=reshape([.true.,.true.,.true.,.true.,.false.,.true.],[3,2]),kind=4,back=.true.)
integer,parameter::k62(2) = maxloc(x,dim=1,mask=reshape([.true.,.true.,.true.,.true.,.true.,.false.],[3,2]),kind=4,back=.true.)
integer,parameter::k63(2) = maxloc(x,dim=1,mask=reshape([.true.,.true.,.true.,.true.,.true.,.true.],[3,2]),kind=4,back=.true.)
if(any(k.ne.[0,0]))print*,"100"
if(any(k1.ne.[0,3]))print*,"101"
if(any(k2.ne.[0,2]))print*,"102"
if(any(k3.ne.[0,3]))print*,"103"
if(any(k4.ne.[0,1]))print*,"104"
if(any(k5.ne.[0,3]))print*,"105"
if(any(k6.ne.[0,1]))print*,"106"
if(any(k7.ne.[0,3]))print*,"107"
if(any(k8.ne.[3,0]))print*,"108"
if(any(k9.ne.[3,3]))print*,"109"
if(any(k10.ne.[3,2]))print*,"110"
if(any(k11.ne.[3,3]))print*,"111"
if(any(k12.ne.[3,1]))print*,"112"
if(any(k13.ne.[3,3]))print*,"113"
if(any(k14.ne.[3,1]))print*,"114"
if(any(k15.ne.[3,3]))print*,"115"
if(any(k16.ne.[2,0]))print*,"116"
if(any(k17.ne.[2,3]))print*,"117"
if(any(k18.ne.[2,2]))print*,"118"
if(any(k19.ne.[2,3]))print*,"119"
if(any(k20.ne.[2,1]))print*,"120"
if(any(k21.ne.[2,3]))print*,"121"
if(any(k22.ne.[2,1]))print*,"122"
if(any(k23.ne.[2,3]))print*,"123"
if(any(k24.ne.[3,0]))print*,"124"
if(any(k25.ne.[3,3]))print*,"125"
if(any(k26.ne.[3,2]))print*,"126"
if(any(k27.ne.[3,3]))print*,"127"
if(any(k28.ne.[3,1]))print*,"128"
if(any(k29.ne.[3,3]))print*,"129"
if(any(k30.ne.[3,1]))print*,"130"
if(any(k31.ne.[3,3]))print*,"131"
if(any(k32.ne.[1,0]))print*,"132"
if(any(k33.ne.[1,3]))print*,"133"
if(any(k34.ne.[1,2]))print*,"134"
if(any(k35.ne.[1,3]))print*,"135"
if(any(k36.ne.[1,1]))print*,"136"
if(any(k37.ne.[1,3]))print*,"137"
if(any(k38.ne.[1,1]))print*,"138"
if(any(k39.ne.[1,3]))print*,"139"
if(any(k40.ne.[3,0]))print*,"140"
if(any(k41.ne.[3,3]))print*,"141"
if(any(k42.ne.[3,2]))print*,"142"
if(any(k43.ne.[3,3]))print*,"143"
if(any(k44.ne.[3,1]))print*,"144"
if(any(k45.ne.[3,3]))print*,"145"
if(any(k46.ne.[3,1]))print*,"146"
if(any(k47.ne.[3,3]))print*,"147"
if(any(k48.ne.[1,0]))print*,"148"
if(any(k49.ne.[1,3]))print*,"149"
if(any(k50.ne.[1,2]))print*,"150"
if(any(k51.ne.[1,3]))print*,"151"
if(any(k52.ne.[1,1]))print*,"152"
if(any(k53.ne.[1,3]))print*,"153"
if(any(k54.ne.[1,1]))print*,"154"
if(any(k55.ne.[1,3]))print*,"155"
if(any(k56.ne.[3,0]))print*,"156"
if(any(k57.ne.[3,3]))print*,"157"
if(any(k58.ne.[3,2]))print*,"158"
if(any(k59.ne.[3,3]))print*,"159"
if(any(k60.ne.[3,1]))print*,"160"
if(any(k61.ne.[3,3]))print*,"161"
if(any(k62.ne.[3,1]))print*,"162"
if(any(k63.ne.[3,3]))print*,"163"
print*,"PASS"
end

