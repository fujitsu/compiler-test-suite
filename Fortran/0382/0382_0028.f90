complex::q(1,1,6)
q(:,:,2::2)=reshape([(1,1),(2,2),(3,3)],[1,1,3])
call s1(q(:,:,2::2),q(:,:,2::2))
print *,'pass'
contains
subroutine s1(q,qq)
complex,target::c(1,1,2:4)=reshape([(1,1),(2,2),(3,3)],[1,1,3])
complex,parameter::d(1,1,2:4)=reshape([(1,1),(2,2),(3,3)],[1,1,3])
complex,pointer::a(:,:,:)
complex,allocatable::b(:,:,:),bb(:,:,:)
complex,allocatable::b2(:,:,:)
complex::q(2:,:,:),qq(:,:,:)
type x
complex,pointer::a(:,:,:)
complex,allocatable::b(:,:,:),bb(:,:,:)
complex,allocatable::b2(:,:,:)
end type
type(x),pointer::v(:)
allocate(b,source=qq)
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,16101,b
if (any(lbound(b)/=[1,1,1]))print *,16102
deallocate(b)
allocate(b,source=q)
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,6101,b
if (any(lbound(b)/=[2,1,1]))print *,6102
deallocate(b)
allocate(b,source=qq(:,:,:))
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,16101,b
if (any(lbound(b)/=[1,1,1]))print *,16102
deallocate(b)
allocate(b,source=q(:,:,:))
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,26101,b
if (any(lbound(b)/=[1,1,1]))print *,26102
deallocate(b)
allocate(b,source=(qq))
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,116101,b
if (any(lbound(b)/=[1,1,1]))print *,116102
deallocate(b)
allocate(b,source=(q))
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,126101,b
if (any(lbound(b)/=[1,1,1]))print *,126102
deallocate(b)
allocate(b,source=c)
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,101,b
if (any(lbound(b)/=[1,1,2]))print *,102
deallocate(b)
allocate(b,source=d)
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,8101,b
if (any(lbound(b)/=[1,1,2]))print *,8102
deallocate(b)
allocate(b,source=c(:,:,2::2))
if (any([b]/=[(1,1),(3,3)]))print *,201,b
if (any(lbound(b)/=[1,1,1]))print *,202
deallocate(b)
allocate(b,source=d(:,:,2::2))
if (any([b]/=[(1,1),(3,3)]))print *,8201,b
if (any(lbound(b)/=[1,1,1]))print *,8202
deallocate(b)
allocate(a(1,1,2:4))
a=c
allocate(b,source=a)
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,301,b
if (any(lbound(b)/=[1,1,2]))print *,302
allocate(bb,source=b)
if (any([bb]/=[(1,1),(2,2),(3,3)]))print *,3011,bb
if (any(lbound(bb)/=[1,1,2]))print *,3021
deallocate(bb,b)
a=>c
allocate(b,source=a)
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,401,b
if (any(lbound(b)/=[1,1,2]))print *,402
deallocate(b)
allocate(b,source=f())
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,501,b
if (any(lbound(b)/=[1,1,2]))print *,502
deallocate(b)
allocate(b,source=e(2,4))
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,601,b
if (any(lbound(b)/=[1,1,2]))print *,602
deallocate(b)
allocate(b,source=(c))
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,1101,b
if (any(lbound(b)/=[1,1,1]))print *,1102
deallocate(b)
allocate(b,source=(d))
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,81101,b
if (any(lbound(b)/=[1,1,1]))print *,81102
deallocate(b)
allocate(b,source=(c(:,:,2::2)))
if (any([b]/=[(1,1),(3,3)]))print *,1201,b
if (any(lbound(b)/=[1,1,1]))print *,1202
deallocate(b)
allocate(b,source=(d(:,:,2::2)))
if (any([b]/=[(1,1),(3,3)]))print *,81201,b
if (any(lbound(b)/=[1,1,1]))print *,81202
deallocate(b)
allocate(a(1,1,2:4))
a=c
allocate(b,source=(a))
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,1301,b
if (any(lbound(b)/=[1,1,1]))print *,1302
deallocate(b)
a=>c
allocate(b,source=(a))
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,1401,b
if (any(lbound(b)/=[1,1,1]))print *,1402
deallocate(b)
allocate(b,source=(f()))
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,1501,b
if (any(lbound(b)/=[1,1,1]))print *,1502
deallocate(b)
allocate(b,source=(e(2,4)))
if (any([b]/=[(1,1),(2,2),(3,3)]))print *,1601,b
if (any(lbound(b)/=[1,1,1]))print *,1602
deallocate(b)
allocate(b2,source=c+c)
if (any([b2]/=[(1,1),(2,2),(3,3)]*2))print *,2101,b
if (any(lbound(b2)/=[1,1,1]))print *,2102
deallocate(b2)
allocate(b2,source=d+d)
if (any([b2]/=[(1,1),(2,2),(3,3)]*2))print *,82101,b2
if (any(lbound(b2)/=[1,1,1]))print *,82102
deallocate(b2)
allocate(b2,source=d(:,:,2::2)+d(:,:,2::2))
if (any([b2]/=[(1,1),(3,3)]*2))print *,82201,b2
if (any(lbound(b2)/=[1,1,1]))print *,82202
deallocate(b2)
allocate(b2,source=c(:,:,2::2)+c(:,:,2::2))
if (any([b2]/=[(1,1),(3,3)]*2))print *,2201,b
if (any(lbound(b2)/=[1,1,1]))print *,2202
deallocate(b2)
allocate(a(1,1,2:4))
a=c
allocate(b2,source=a+a)
if (any([b2]/=[(1,1),(2,2),(3,3)]*2))print *,2301,b
if (any(lbound(b2)/=[1,1,1]))print *,2302
deallocate(b2)
a=>c
allocate(b2,source=a+a)
if (any([b2]/=[(1,1),(2,2),(3,3)]*2))print *,2401,b
if (any(lbound(b2)/=[1,1,1]))print *,2402
deallocate(b2)
allocate(b2,source=f()+f())
if (any([b2]/=[(1,1),(2,2),(3,3)]*2))print *,2501,b2
if (any(lbound(b2)/=[1,1,1]))print *,2502
deallocate(b2)
allocate(b2,source=e(2,4)+e(2,4))
if (any([b2]/=[(1,1),(2,2),(3,3)]*2))print *,2601,b2
if (any(lbound(b2)/=[1,1,1]))print *,2602
deallocate(b2)

allocate(v(2))
allocate(v(2)%b,source=c)
if (any([v(2)%b]/=[(1,1),(2,2),(3,3)]))print *,101,v(2)%b
if (any(lbound(v(2)%b)/=[1,1,2]))print *,102
deallocate(v(2)%b)
allocate(v(2)%b,source=d)
if (any([v(2)%b]/=[(1,1),(2,2),(3,3)]))print *,8101,v(2)%b
if (any(lbound(v(2)%b)/=[1,1,2]))print *,8102
deallocate(v(2)%b)
allocate(v(2)%b,source=c(:,:,2::2))
if (any([v(2)%b]/=[(1,1),(3,3)]))print *,201,v(2)%b
if (any(lbound(v(2)%b)/=[1,1,1]))print *,202
deallocate(v(2)%b)
allocate(v(2)%b,source=d(:,:,2::2))
if (any([v(2)%b]/=[(1,1),(3,3)]))print *,8201,v(2)%b
if (any(lbound(v(2)%b)/=[1,1,1]))print *,8202
deallocate(v(2)%b)
allocate(v(2)%a(1,1,2:4))
v(2)%a=c
allocate(v(2)%b,source=v(2)%a)
if (any([v(2)%b]/=[(1,1),(2,2),(3,3)]))print *,301,v(2)%b
if (any(lbound(v(2)%b)/=[1,1,2]))print *,302
allocate(v(2)%bb,source=v(2)%b)
if (any([v(2)%b]/=[(1,1),(2,2),(3,3)]))print *,3011,v(2)%bb
if (any(lbound(v(2)%bb)/=[1,1,2]))print *,3021
deallocate(v(2)%bb,v(2)%b)
v(2)%a=>c
allocate(v(2)%b,source=v(2)%a)
if (any([v(2)%b]/=[(1,1),(2,2),(3,3)]))print *,401,v(2)%b
if (any(lbound(v(2)%b)/=[1,1,2]))print *,402
deallocate(v(2)%b)
allocate(v(2)%b,source=f())
if (any([v(2)%b]/=[(1,1),(2,2),(3,3)]))print *,501,v(2)%b
if (any(lbound(v(2)%b)/=[1,1,2]))print *,502
deallocate(v(2)%b)
allocate(v(2)%b,source=e(2,4))
if (any([v(2)%b]/=[(1,1),(2,2),(3,3)]))print *,601,v(2)%b
if (any(lbound(v(2)%b)/=[1,1,2]))print *,602
deallocate(v(2)%b)
allocate(v(2)%b,source=(c))
if (any([v(2)%b]/=[(1,1),(2,2),(3,3)]))print *,1101,v(2)%b
if (any(lbound(v(2)%b)/=[1,1,1]))print *,1102
deallocate(v(2)%b)
allocate(v(2)%b,source=(d))
if (any([v(2)%b]/=[(1,1),(2,2),(3,3)]))print *,81101,v(2)%b
if (any(lbound(v(2)%b)/=[1,1,1]))print *,81102
deallocate(v(2)%b)
allocate(v(2)%b,source=(c(:,:,2::2)))
if (any([v(2)%b]/=[(1,1),(3,3)]))print *,1201,v(2)%b
if (any(lbound(v(2)%b)/=[1,1,1]))print *,1202
deallocate(v(2)%b)
allocate(v(2)%b,source=(d(:,:,2::2)))
if (any([v(2)%b]/=[(1,1),(3,3)]))print *,81201,v(2)%b
if (any(lbound(v(2)%b)/=[1,1,1]))print *,81202
deallocate(v(2)%b)
allocate(v(2)%a(1,1,2:4))
v(2)%a=c
allocate(v(2)%b,source=(v(2)%a))
if (any([v(2)%b]/=[(1,1),(2,2),(3,3)]))print *,1301,v(2)%b
if (any(lbound(v(2)%b)/=[1,1,1]))print *,1302
deallocate(v(2)%b)
v(2)%a=>c
allocate(v(2)%b,source=(v(2)%a))
if (any([v(2)%b]/=[(1,1),(2,2),(3,3)]))print *,1401,v(2)%b
if (any(lbound(v(2)%b)/=[1,1,1]))print *,1402
deallocate(v(2)%b)
allocate(v(2)%b,source=(f()))
if (any([v(2)%b]/=[(1,1),(2,2),(3,3)]))print *,1501,v(2)%b
if (any(lbound(v(2)%b)/=[1,1,1]))print *,1502
deallocate(v(2)%b)
allocate(v(2)%b,source=(e(2,4)))
if (any([v(2)%b]/=[(1,1),(2,2),(3,3)]))print *,1601,v(2)%b
if (any(lbound(v(2)%b)/=[1,1,1]))print *,1602
deallocate(v(2)%b)
allocate(v(2)%b2,source=c+c)
if (any([v(2)%b2]/=[(1,1),(2,2),(3,3)]*2))print *,2101,v(2)%b
if (any(lbound(v(2)%b2)/=[1,1,1]))print *,2102
deallocate(v(2)%b2)
allocate(v(2)%b2,source=d+d)
if (any([v(2)%b2]/=[(1,1),(2,2),(3,3)]*2))print *,82101,v(2)%b2
if (any(lbound(v(2)%b2)/=[1,1,1]))print *,82102
deallocate(v(2)%b2)
allocate(v(2)%b2,source=d(:,:,2::2)+d(:,:,2::2))
if (any([v(2)%b2]/=[(1,1),(3,3)]*2))print *,82201,v(2)%b2
if (any(lbound(v(2)%b2)/=[1,1,1]))print *,82202
deallocate(v(2)%b2)
allocate(v(2)%b2,source=c(:,:,2::2)+c(:,:,2::2))
if (any([v(2)%b2]/=[(1,1),(3,3)]*2))print *,2201,v(2)%b
if (any(lbound(v(2)%b2)/=[1,1,1]))print *,2202
deallocate(v(2)%b2)
allocate(v(2)%a(1,1,2:4))
v(2)%a=c
allocate(v(2)%b2,source=v(2)%a+v(2)%a)
if (any([v(2)%b2]/=[(1,1),(2,2),(3,3)]*2))print *,2301,v(2)%b
if (any(lbound(v(2)%b2)/=[1,1,1]))print *,2302
deallocate(v(2)%b2)
v(2)%a=>c
allocate(v(2)%b2,source=v(2)%a+v(2)%a)
if (any([v(2)%b2]/=[(1,1),(2,2),(3,3)]*2))print *,2401,v(2)%b
if (any(lbound(v(2)%b2)/=[1,1,1]))print *,2402
deallocate(v(2)%b2)
allocate(v(2)%b2,source=f()+f())
if (any([v(2)%b2]/=[(1,1),(2,2),(3,3)]*2))print *,2501,v(2)%b2
if (any(lbound(v(2)%b2)/=[1,1,1]))print *,2502
deallocate(v(2)%b2)
allocate(v(2)%b2,source=e(2,4)+e(2,4))
if (any([v(2)%b2]/=[(1,1),(2,2),(3,3)]*2))print *,2601,v(2)%b2
if (any(lbound(v(2)%b2)/=[1,1,1]))print *,2602
deallocate(v(2)%b2)
end subroutine
function f() result(r)
complex , pointer::r(:,:,:)
allocate(r(1,1,2:4))
r= reshape([(1,1),(2,2),(3,3)],[1,1,3])
end function
function e(k1,k2) result(r)
complex ::r(1,1,k1:k2)
r= reshape([(1,1),(2,2),(3,3)],[1,1,3])
end function
end 
