integer*1,parameter::a=1
integer*1,parameter::b=2
integer*1,parameter::c=3
integer*1,parameter::d=4
integer*1,parameter::e=5
integer*1,parameter::f=6
integer*1,parameter::g=7
integer*1,parameter::h=8
integer*1,parameter::i=0
integer*1,parameter::j=9
integer*1,parameter::k=10
integer*1,parameter::l=11
integer*1,parameter::m=12
integer*1,parameter::n=13
integer*1,parameter::o=14
integer*1,parameter::p=15
integer*1,parameter::q=16
integer*1,parameter::r=17
integer*1,parameter::s=18
integer*1,parameter::t=19
integer*1,parameter::u=20
integer*1,parameter::v=21
integer*1,parameter::w=22
integer*1,parameter::x=23
integer*1,parameter::y=24
integer*1,parameter::z=25
integer*1,parameter::a1=26
integer*1,parameter::b1=27
integer*1,parameter::c1=28
integer*1,parameter::d1=29
integer*1,parameter::e1=30
integer*1,parameter::f1=31
integer*1,parameter::g1=32
integer*1,parameter::kind1=4
integer*4,parameter::aa=maskr(a,kind1)
integer*4,parameter::bb=maskr(b,kind1)
integer*4,parameter::cc=maskr(c,kind1)
integer*4,parameter::dd=maskr(d,kind1)
integer*4,parameter::ee=maskr(e,kind1)
integer*4,parameter::ff=maskr(f,kind1)
integer*4,parameter::gg=maskr(g,kind1)
integer*4,parameter::hh=maskr(h,kind1)
integer*4,parameter::ii=maskr(i,kind1)
integer*4,parameter::jj=maskr(j,kind1)
integer*4,parameter::kk=maskr(k,kind1)
integer*4,parameter::ll=maskr(l,kind1)
integer*4,parameter::mm=maskr(m,kind1)
integer*4,parameter::nn=maskr(n,kind1)
integer*4,parameter::oo=maskr(o,kind1)
integer*4,parameter::pp=maskr(p,kind1)
integer*4,parameter::qq=maskr(q,kind1)
integer*4,parameter::rr=maskr(r,kind1)
integer*4,parameter::ss=maskr(s,kind1)
integer*4,parameter::tt=maskr(t,kind1)
integer*4,parameter::uu=maskr(u,kind1)
integer*4,parameter::vv=maskr(v,kind1)
integer*4,parameter::ww=maskr(w,kind1)
integer*4,parameter::xx=maskr(x,kind1)
integer*4,parameter::yy=maskr(y,kind1)
integer*4,parameter::zz=maskr(z,kind1)
integer*4,parameter::aa1=maskr(a1,kind1)
integer*4,parameter::bb1=maskr(b1,kind1)
integer*4,parameter::cc1=maskr(c1,kind1)
integer*4,parameter::dd1=maskr(d1,kind1)
integer*4,parameter::ee1=maskr(e1,kind1)
integer*4,parameter::ff1=maskr(f1,kind1)
integer*4,parameter::gg1=maskr(g1,kind1)
if(aa.ne. 1)print*,"100"
if(bb.ne. 3)print*,"101"
if(cc.ne. 7)print*,"102"
if(dd.ne. 15)print*,"103"
if(ee.ne. 31)print*,"104"
if(ff.ne. 63)print*,"105"
if(gg.ne. 127)print*,"106"
if(hh.ne. 255)print*,"106"
if(ii.ne. 0)print*,"107"
if(jj.ne. 511)print*,"108"
if(kk.ne. 1023)print*,"109"
if(ll.ne.2047)print*,"110"
if(mm.ne. 4095)print*,"111"
if(nn.ne.8191)print*,"112"
if(oo.ne.16383)print*,"113"
if(pp.ne.32767)print*,"114"
if(qq.ne.65535)print*,"115"
if(rr.ne.131071)print*,"116"
if(ss.ne.262143)print*,"117"
if(tt.ne.524287)print*,"118"
if(uu.ne. 1048575)print*,"119"
if(vv.ne.2097151)print*,"120"
if(ww.ne.4194303)print*,"121"
if(xx.ne.8388607)print*,"122"
if(yy.ne.16777215)print*,"123"
if(zz.ne.33554431)print*,"124"
if(aa1.ne.67108863)print*,"125"
if(bb1.ne. 134217727)print*,"126"
if(cc1.ne. 268435455)print*,"127"
if(dd1.ne.536870911)print*,"128"
if(ee1.ne.1073741823)print*,"129"
if(ff1.ne.2147483647)print*,"130"
if(gg1.ne.-1)print*,"131"
print*,"PASS"
end

