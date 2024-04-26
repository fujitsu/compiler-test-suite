 call s1
 print *,'pass'
 end
 subroutine s1
intrinsic findloc
 integer,parameter::kd=2
 integer(kd),parameter::k1=-huge(1_kd)-1,j1=-huge(1_kd)
 integer(kd)          ::k2=-huge(1_kd)-1,j2=-huge(1_kd)
 integer(kd)          ::m1=1
 logical,parameter::t=.true.,f=.false.
 logical          ::tt=.true.,ff=.false.
 if (any(findloc((/k1/),value=k1,back=ff)/=1))call errtra
 if (any(findloc((/k2/),value=k2,back=ff)/=1))call errtra
 if (any(findloc(reshape((/k1/),(/1,1/)),value=k1,back=ff)/=1))call errtra
 if (any(findloc(reshape((/k1/),(/m1,m1/)),value=k1,back=ff)/=1))call errtra
 if (any(findloc(reshape((/k2/),(/1,1/)),value=k2,back=ff)/=1))call errtra
 if (any(findloc(reshape((/k2/),(/m1,m1/)),value=k2,back=ff)/=1))call errtra
 if (any(findloc((/k1/),mask=t,value=k1,back=ff)/=1))call errtra
 if (any(findloc((/k2/),mask=t,value=k2,back=ff)/=1))call errtra
 if (any(findloc(reshape((/k1/),(/1,1/)),mask=t,value=k1,back=ff)/=1))call errtra
 if (any(findloc(reshape((/k1/),(/m1,m1/)),mask=t,value=k1,back=ff)/=1))call errtra
 if (any(findloc(reshape((/k2/),(/1,1/)),mask=t,value=k2,back=ff)/=1))call errtra
 if (any(findloc(reshape((/k2/),(/m1,m1/)),mask=t,value=k2,back=ff)/=1))call errtra
 if (any(findloc((/k1/),mask=tt,value=k1,back=ff)/=1))call errtra
 if (any(findloc((/k2/),mask=tt,value=k2,back=ff)/=1))call errtra
 if (any(findloc(reshape((/k1/),(/1,1/)),mask=tt,value=k1,back=ff)/=1))call errtra
 if (any(findloc(reshape((/k1/),(/m1,m1/)),mask=tt,value=k1,back=ff)/=1))call errtra
 if (any(findloc(reshape((/k2/),(/1,1/)),mask=tt,value=k2,back=ff)/=1))call errtra
 if (any(findloc(reshape((/k2/),(/m1,m1/)),mask=tt,value=k2,back=ff)/=1))call errtra
 if (any(findloc((/((/k1/),nn=m1,0)/),value=k1,back=ff)/=0))call errtra
 if (any(findloc((/((/k2/),nn=m1,0)/),value=k2,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k1/),(/1,1/)),nn=m1,0)/),value=k1,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k1/),(/m1,m1/)),nn=m1,0)/),value=k1,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k2/),(/1,1/)),nn=m1,0)/),value=k2,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k2/),(/m1,m1/)),nn=m1,0)/),value=k2,back=ff)/=0))call errtra
 if (any(findloc((/((/k1/),nn=m1,0)/),mask=t,value=k1,back=ff)/=0))call errtra
 if (any(findloc((/((/k2/),nn=m1,0)/),mask=t,value=k2,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k1/),(/1,1/)),nn=m1,0)/),mask=t,value=k1,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k1/),(/m1,m1/)),nn=m1,0)/),mask=t,value=k1,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k2/),(/1,1/)),nn=m1,0)/),mask=t,value=k2,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k2/),(/m1,m1/)),nn=m1,0)/),mask=t,value=k2,back=ff)/=0))call errtra
 if (any(findloc((/((/k1/),nn=m1,0)/),mask=tt,value=k1,back=ff)/=0))call errtra
 if (any(findloc((/((/k2/),nn=m1,0)/),mask=tt,value=k2,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k1/),(/1,1/)),nn=m1,0)/),mask=tt,value=k1,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k1/),(/m1,m1/)),nn=m1,0)/),mask=tt,value=k1,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k2/),(/1,1/)),nn=m1,0)/),mask=tt,value=k2,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k2/),(/m1,m1/)),nn=m1,0)/),mask=tt,value=k2,back=ff)/=0))call errtra
 if (any(findloc((/k1/),mask=f,value=k1,back=ff)/=0))call errtra
 if (any(findloc((/k2/),mask=f,value=k2,back=ff)/=0))call errtra
 if (any(findloc(reshape((/k1/),(/1,1/)),mask=f,value=k1,back=ff)/=0))call errtra
 if (any(findloc(reshape((/k1/),(/m1,m1/)),mask=f,value=k1,back=ff)/=0))call errtra
 if (any(findloc(reshape((/k2/),(/1,1/)),mask=f,value=k2,back=ff)/=0))call errtra
 if (any(findloc(reshape((/k2/),(/m1,m1/)),mask=f,value=k2,back=ff)/=0))call errtra
 if (any(findloc((/k1/),mask=ff,value=k1,back=ff)/=0))call errtra
 if (any(findloc((/k2/),mask=ff,value=k2,back=ff)/=0))call errtra
 if (any(findloc(reshape((/k1/),(/1,1/)),mask=ff,value=k1,back=ff)/=0))call errtra
 if (any(findloc(reshape((/k1/),(/m1,m1/)),mask=ff,value=k1,back=ff)/=0))call errtra
 if (any(findloc(reshape((/k2/),(/1,1/)),mask=ff,value=k2,back=ff)/=0))call errtra
 if (any(findloc(reshape((/k2/),(/m1,m1/)),mask=ff,value=k2,back=ff)/=0))call errtra
 if (any(findloc((/((/k1/),nn=m1,0)/),mask=f,value=k1,back=ff)/=0))call errtra
 if (any(findloc((/((/k2/),nn=m1,0)/),mask=f,value=k2,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k1/),(/1,1/)),nn=m1,0)/),mask=f,value=k1,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k1/),(/m1,m1/)),nn=m1,0)/),mask=f,value=k1,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k2/),(/1,1/)),nn=m1,0)/),mask=f,value=k2,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k2/),(/m1,m1/)),nn=m1,0)/),mask=f,value=k2,back=ff)/=0))call errtra
 if (any(findloc((/((/k1/),nn=m1,0)/),mask=ff,value=k1,back=ff)/=0))call errtra
 if (any(findloc((/((/k2/),nn=m1,0)/),mask=ff,value=k2,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k1/),(/1,1/)),nn=m1,0)/),mask=ff,value=k1,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k1/),(/m1,m1/)),nn=m1,0)/),mask=ff,value=k1,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k2/),(/1,1/)),nn=m1,0)/),mask=ff,value=k2,back=ff)/=0))call errtra
 if (any(findloc((/(reshape((/k2/),(/m1,m1/)),nn=m1,0)/),mask=ff,value=k2,back=ff)/=0))call errtra
 end
subroutine errtra
print *,'error'
end
