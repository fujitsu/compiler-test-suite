module m
contains
subroutine s1(n,k,e,f)
character(n),allocatable::a(:,:)
character(k),allocatable::b(:,:)
type w
integer:: w1
character(2),allocatable::c(:,:)
character(:),allocatable::d(:,:)
end type
type(w)::z
character(*),allocatable::e(:,:)
character(*),allocatable::f(:,:)
allocate(character(2)::a(3,2),b(2,3),z%c(3,3),z%d(2,3))
a=reshape(['12','34','56','78','90','ab'],[3,2])
b=reshape(['56','78','90','ab','cd','ef'],[2,3])
z%c=reshape(['12','34','56','78','90','ab','cd','ef','gh'],[3,3])
z%d(:,:)=reshape(['56','78','90','ab','cd','ef'],[2,3])
if (any([a]/=['12','34','56','78','90','ab']))print *,101
if (any([b]/=['56','78','90','ab','cd','ef']))print *,102
if (any([z%c]/=['12','34','56','78','90','ab','cd','ef','gh']))print *,103
if (any([z%d]/=['56','78','90','ab','cd','ef']))print *,104
if (any(ubound(a)/=[3,2]))print *,401
if (any(ubound(b)/=[2,3]))print *,402
if (any(ubound(z%c)/=[3,3]))print *,403
if (any(ubound(z%d)/=[2,3]))print *,404
if (len(a)/=2) print *,501
if (len(b)/=2) print *,502
if (len(z%c)/=2) print *,503
if (len(z%d)/=2) print *,504
allocate(character(*)::e(2,3),f(3,2))
e=reshape(['56','78','90','ab','cd','ef'],[2,3])
f=reshape(['12x','34x','56x','78x','90x','abx'],[3,2])
if (any([e]/=['56','78','90','ab','cd','ef']))print *,202
if (any([f]/=['12x','34x','56x','78x','90x','abx']))print *,203
if (any(ubound(e)/=[2,3]))print *,604
if (any(ubound(f)/=[3,2]))print *,603
if (len(e)/=2) print *,513
if (len(f)/=3) print *,514
end subroutine
subroutine s2(n,k,e,f)
character(n),allocatable::a
character(k),allocatable::b
type w
integer:: w1
character(2),allocatable::c
character(:),allocatable::d
end type
type(w)::z
character(*),allocatable::e
character(*),allocatable::f
allocate(character(2)::a,b,z%c,z%d)
a='12'
b='34'
z%c='56'
z%d(:)='78'
if (a/='12')print *,1500
if (b/='34')print *,1501
if (z%c/='56')print *,1502
if (z%c/='56')print *,1502
if (len(a)/=2) print *,1503
if (len(b)/=2) print *,1504
if (len(z%c)/=2) print *,1505
if (len(z%d)/=2) print *,1506
allocate(character(*)::e,f)
e='78'
f='90x'
if (e/='78')print *,2501
if (f/='90x')print *,2502
if (len(e)/=2) print *,3503
if (len(f)/=3) print *,4503
end subroutine
end
use m
character(2),allocatable::e(:,:)
character(3),allocatable::f(:,:)
character(2),allocatable::ee
character(3),allocatable::ff
call s1(2,2,e,f)
call s2(2,2,ee,ff)
print *,'pass'
end
