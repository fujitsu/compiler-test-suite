 call s1
 print *,'pass'
 end
 subroutine s1
 logical,parameter::t=.true.,f=.false.
 logical (1) ::a1/t/,a2(2)/f,t/
 logical (2) ::b1/t/,b2(2)/f,t/
 logical (4) ::c1/t/,c2(2)/f,t/
 integer (1) ::d1/t/,d2(2)/f,t/
 integer (2) ::e1/t/,e2(2)/f,t/
 integer (4) ::f1/t/,f2(2)/f,t/
 i=2
 call sa(%val(a1),%val(a2(1)),%val(a2(2)),%val(a2(i)))
 call sa(%val(b1),%val(b2(1)),%val(b2(2)),%val(b2(i)))
 call sa(%val(c1),%val(c2(1)),%val(c2(2)),%val(c2(i)))
 call sa(%val(d1),%val(d2(1)),%val(d2(2)),%val(d2(i)))
 call sa(%val(e1),%val(e2(1)),%val(e2(2)),%val(e2(i)))
 call sa(%val(f1),%val(f2(1)),%val(f2(2)),%val(f2(i)))
 end
 subroutine sa(x1,x2,x3,x4)
 if (loc(x1)/=1)print *,'fail'
 if (loc(x2)/=0)print *,'fail'
 if (loc(x3)/=1)print *,'fail'
 if (loc(x4)/=1)print *,'fail'
 end
