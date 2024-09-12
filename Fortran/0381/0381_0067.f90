module m
contains
subroutine s1(n,k,e,f,ee,eee,ff,fff)
character(n),allocatable::a(:,:),aa(:,:),aaa(:,:)
character(k),allocatable::b(:,:),bb(:,:),bbb(:,:)
character(2),allocatable::c(:,:),cc(:,:),ccc(:,:)
character(2),allocatable::d(:,:),dd(:,:),ddd(:,:)
character(*),allocatable::e(:,:),ee(:,:),eee(:,:)
character(*),allocatable::f(:,:),ff(:,:),fff(:,:)
allocate(character(2)::a(3,2),b(2,3),c(3,3),d(2,3))
a=reshape(['12','34','56','78','90','ab'],[3,2])
b=reshape(['56','78','90','ab','cd','ef'],[2,3])
c=reshape(['12','34','56','78','90','ab','cd','ef','gh'],[3,3])
d=reshape(['56','78','90','ab','cd','ef'],[2,3])
if (any([a]/=['12','34','56','78','90','ab']))print *,101
if (any([b]/=['56','78','90','ab','cd','ef']))print *,102
if (any([c]/=['12','34','56','78','90','ab','cd','ef','gh']))print *,103
if (any([d]/=['56','78','90','ab','cd','ef']))print *,104
if (any(ubound(a)/=[3,2]))print *,401
if (any(ubound(b)/=[2,3]))print *,402
if (any(ubound(c)/=[3,3]))print *,403
if (any(ubound(d)/=[2,3]))print *,404
if (len(a)/=2) print *,501
if (len(b)/=2) print *,502
if (len(c)/=2) print *,503
if (len(d)/=2) print *,504
allocate(aa,source=a)
allocate(bb,source=b)
allocate(cc,source=c)
allocate(dd,source=d)
if (any([aa]/=['12','34','56','78','90','ab']))print *,2101
if (any([bb]/=['56','78','90','ab','cd','ef']))print *,2102
if (any([cc]/=['12','34','56','78','90','ab','cd','ef','gh']))print *,2103
if (any([dd]/=['56','78','90','ab','cd','ef']))print *,2104
if (any(ubound(aa)/=[3,2]))print *,2401
if (any(ubound(bb)/=[2,3]))print *,2402
if (any(ubound(cc)/=[3,3]))print *,2403
if (any(ubound(dd)/=[2,3]))print *,2404
if (len(aa)/=2) print *,2501
if (len(bb)/=2) print *,2502
if (len(cc)/=2) print *,2503
if (len(dd)/=2) print *,2504
allocate(aaa(3,2),source=a)
allocate(bbb(2,3),source=b)
allocate(ccc(3,3),source=c)
allocate(ddd(2,3),source=d)
if (any([aaa]/=['12','34','56','78','90','ab']))print *,2101
if (any([bbb]/=['56','78','90','ab','cd','ef']))print *,2102
if (any([ccc]/=['12','34','56','78','90','ab','cd','ef','gh']))print *,2103
if (any([ddd]/=['56','78','90','ab','cd','ef']))print *,2104
if (any(ubound(aaa)/=[3,2]))print *,2401
if (any(ubound(bbb)/=[2,3]))print *,2402
if (any(ubound(ccc)/=[3,3]))print *,2403
if (any(ubound(ddd)/=[2,3]))print *,2404
if (len(aaa)/=2) print *,2501
if (len(bbb)/=2) print *,2502
if (len(ccc)/=2) print *,2503
if (len(ddd)/=2) print *,2504
allocate(character(*)::e(2,3),f(3,2))
e=reshape(['56','78','90','ab','cd','ef'],[2,3])
f=reshape(['12x','34x','56x','78x','90x','abx'],[3,2])
if (any([e]/=['56','78','90','ab','cd','ef']))print *,202
if (any([f]/=['12x','34x','56x','78x','90x','abx']))print *,203
if (any(ubound(e)/=[2,3]))print *,604
if (any(ubound(f)/=[3,2]))print *,603
if (len(e)/=2) print *,513
if (len(f)/=3) print *,514
allocate(ee,source=e)
allocate(ff,source=f)
if (any([ee]/=['56','78','90','ab','cd','ef']))print *,2202
if (any([ff]/=['12x','34x','56x','78x','90x','abx']))print *,2203
if (any(ubound(ee)/=[2,3]))print *,2604
if (any(ubound(ff)/=[3,2]))print *,2603
if (len(ee)/=2) print *,2513
if (len(ff)/=3) print *,2514
allocate(eee(2,3),source=e)
allocate(fff(3,2),source=f)
if (any([eee]/=['56','78','90','ab','cd','ef']))print *,2202
if (any([fff]/=['12x','34x','56x','78x','90x','abx']))print *,2203
if (any(ubound(ee)/=[2,3]))print *,2604
if (any(ubound(ff)/=[3,2]))print *,2603
if (len(eee)/=2) print *,2513
if (len(fff)/=3) print *,2514
end subroutine
subroutine s2(n,k,e,f,e1,f1)
character(n),allocatable::a,a1
character(k),allocatable::b,b1
character(2),allocatable::c,c1
character(2),allocatable::d,d1
character(*),allocatable::e,e1
character(*),allocatable::f,f1
allocate(character(2)::a,b,c,d)
a='12'
b='34'
c='56'
d='78'
if (a/='12')print *,1500
if (b/='34')print *,1501
if (c/='56')print *,1502
if (d/='78')print *,1502
if (len(a)/=2) print *,1503
if (len(b)/=2) print *,1504
if (len(c)/=2) print *,1505
if (len(d)/=2) print *,1506
allocate(character(*)::e,f)
e='78'
f='90x'
if (e/='78')print *,2501
if (f/='90x')print *,2502
if (len(e)/=2) print *,3503
if (len(f)/=3) print *,4503
allocate(a1,source=a)
allocate(b1,source=b)
allocate(c1,source=c)
allocate(d1,source=d)
allocate(e1,source=e)
allocate(f1,source=f)
if (a1/='12')print *,1500
if (b1/='34')print *,1501
if (c1/='56')print *,1502
if (d1/='78')print *,1502
if (e1/='78')print *,1502
if (f1/='90x')print *,1502
if (len(a1)/=2) print *,1503
if (len(b1)/=2) print *,1504
if (len(c1)/=2) print *,1505
if (len(d1)/=2) print *,1506
if (len(e1)/=2) print *,1506
if (len(f1)/=3) print *,1506
end subroutine
end
use m
character(2),allocatable::e(:,:),ex(:,:),eee(:,:)
character(3),allocatable::f(:,:),fx(:,:),fff(:,:)
character(2),allocatable::ee,e1
character(3),allocatable::ff,f1
call s1(2,2,e,f,ex,eee,fx,fff)
call s2(2,2,ee,ff,e1,f1)
print *,'pass'
end
