 call s1
 print *,'pass'
 end
 subroutine s1
 integer,parameter::kd=2
 integer(kd),parameter::k1=-huge(1_kd)-1,j1=-huge(1_kd)
 integer(kd)          ::k2=-huge(1_kd)-1,j2=-huge(1_kd)
 integer(kd)          ::m1=1
 logical,parameter::t=.true.,f=.false.
 logical          ::tt=.true.,ff=.false.
 if (any(maxloc((/k1/),back=ff)/=1))call errtra
 if (any(maxloc((/k2/),back=ff)/=1))call errtra
 if (any(maxloc(reshape((/k1/),(/1,1/)),back=ff)/=1))call errtra
 if (any(maxloc(reshape((/k1/),(/m1,m1/)),back=ff)/=1))call errtra
 if (any(maxloc(reshape((/k2/),(/1,1/)),back=ff)/=1))call errtra
 if (any(maxloc(reshape((/k2/),(/m1,m1/)),back=ff)/=1))call errtra
 if (any(maxloc((/k1/),mask=t,back=ff)/=1))call errtra
 if (any(maxloc((/k2/),mask=t,back=ff)/=1))call errtra
 if (any(maxloc(reshape((/k1/),(/1,1/)),mask=t,back=ff)/=1))call errtra
 if (any(maxloc(reshape((/k1/),(/m1,m1/)),mask=t,back=ff)/=1))call errtra
 if (any(maxloc(reshape((/k2/),(/1,1/)),mask=t,back=ff)/=1))call errtra
 if (any(maxloc(reshape((/k2/),(/m1,m1/)),mask=t,back=ff)/=1))call errtra
 if (any(maxloc((/k1/),mask=tt,back=ff)/=1))call errtra
 if (any(maxloc((/k2/),mask=tt,back=ff)/=1))call errtra
 if (any(maxloc(reshape((/k1/),(/1,1/)),mask=tt,back=ff)/=1))call errtra
 if (any(maxloc(reshape((/k1/),(/m1,m1/)),mask=tt,back=ff)/=1))call errtra
 if (any(maxloc(reshape((/k2/),(/1,1/)),mask=tt,back=ff)/=1))call errtra
 if (any(maxloc(reshape((/k2/),(/m1,m1/)),mask=tt,back=ff)/=1))call errtra
 if (any(maxloc((/((/k1/),nn=m1,0)/),back=ff)/=0))call errtra
 if (any(maxloc((/((/k2/),nn=m1,0)/),back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k1/),(/1,1/)),nn=m1,0)/),back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k1/),(/m1,m1/)),nn=m1,0)/),back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k2/),(/1,1/)),nn=m1,0)/),back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k2/),(/m1,m1/)),nn=m1,0)/),back=ff)/=0))call errtra
 if (any(maxloc((/((/k1/),nn=m1,0)/),mask=t,back=ff)/=0))call errtra
 if (any(maxloc((/((/k2/),nn=m1,0)/),mask=t,back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k1/),(/1,1/)),nn=m1,0)/),mask=t,back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k1/),(/m1,m1/)),nn=m1,0)/),mask=t,back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k2/),(/1,1/)),nn=m1,0)/),mask=t,back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k2/),(/m1,m1/)),nn=m1,0)/),mask=t,back=ff)/=0))call errtra
 if (any(maxloc((/((/k1/),nn=m1,0)/),mask=tt,back=ff)/=0))call errtra
 if (any(maxloc((/((/k2/),nn=m1,0)/),mask=tt,back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k1/),(/1,1/)),nn=m1,0)/),mask=tt,back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k1/),(/m1,m1/)),nn=m1,0)/),mask=tt,back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k2/),(/1,1/)),nn=m1,0)/),mask=tt,back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k2/),(/m1,m1/)),nn=m1,0)/),mask=tt,back=ff)/=0))call errtra
 if (any(maxloc((/k1/),mask=f,back=ff)/=0))call errtra
 if (any(maxloc((/k2/),mask=f,back=ff)/=0))call errtra
 if (any(maxloc(reshape((/k1/),(/1,1/)),mask=f,back=ff)/=0))call errtra
 if (any(maxloc(reshape((/k1/),(/m1,m1/)),mask=f,back=ff)/=0))call errtra
 if (any(maxloc(reshape((/k2/),(/1,1/)),mask=f,back=ff)/=0))call errtra
 if (any(maxloc(reshape((/k2/),(/m1,m1/)),mask=f,back=ff)/=0))call errtra
 if (any(maxloc((/k1/),mask=ff,back=ff)/=0))call errtra
 if (any(maxloc((/k2/),mask=ff,back=ff)/=0))call errtra
 if (any(maxloc(reshape((/k1/),(/1,1/)),mask=ff,back=ff)/=0))call errtra
 if (any(maxloc(reshape((/k1/),(/m1,m1/)),mask=ff,back=ff)/=0))call errtra
 if (any(maxloc(reshape((/k2/),(/1,1/)),mask=ff,back=ff)/=0))call errtra
 if (any(maxloc(reshape((/k2/),(/m1,m1/)),mask=ff,back=ff)/=0))call errtra
 if (any(maxloc((/((/k1/),nn=m1,0)/),mask=f,back=ff)/=0))call errtra
 if (any(maxloc((/((/k2/),nn=m1,0)/),mask=f,back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k1/),(/1,1/)),nn=m1,0)/),mask=f,back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k1/),(/m1,m1/)),nn=m1,0)/),mask=f,back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k2/),(/1,1/)),nn=m1,0)/),mask=f,back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k2/),(/m1,m1/)),nn=m1,0)/),mask=f,back=ff)/=0))call errtra
 if (any(maxloc((/((/k1/),nn=m1,0)/),mask=ff,back=ff)/=0))call errtra
 if (any(maxloc((/((/k2/),nn=m1,0)/),mask=ff,back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k1/),(/1,1/)),nn=m1,0)/),mask=ff,back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k1/),(/m1,m1/)),nn=m1,0)/),mask=ff,back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k2/),(/1,1/)),nn=m1,0)/),mask=ff,back=ff)/=0))call errtra
 if (any(maxloc((/(reshape((/k2/),(/m1,m1/)),nn=m1,0)/),mask=ff,back=ff)/=0))call errtra
 end
subroutine errtra
print *,'error'
end
