subroutine s1
character,target::c(2:4)=['1','2','3']
character,parameter::d(2:4)=['1','2','3']
type x
character,pointer::a(:)
character,allocatable::b(:),bb(:)
character(2),allocatable::b2(:)
end type
type(x)::v
allocate(v%b,source=c)
if (any(v%b/=['1','2','3']))print *,101,v%b
if (any(lbound(v%b)/=[2]))print *,102
deallocate(v%b)
allocate(v%b,source=d)
if (any(v%b/=['1','2','3']))print *,8101,v%b
if (any(lbound(v%b)/=[2]))print *,8102
deallocate(v%b)
allocate(v%b,source=c(2::2))
if (any(v%b/=['1','3']))print *,201,v%b
if (any(lbound(v%b)/=[1]))print *,202
deallocate(v%b)
allocate(v%b,source=d(2::2))
if (any(v%b/=['1','3']))print *,8201,v%b
if (any(lbound(v%b)/=[1]))print *,8202
deallocate(v%b)
allocate(v%a(2:4))
v%a=c
allocate(v%b,source=v%a)
if (any(v%b/=['1','2','3']))print *,301,v%b
if (any(lbound(v%b)/=[2]))print *,302
allocate(v%bb,source=v%b)
if (any(v%bb/=['1','2','3']))print *,3011,v%bb
if (any(lbound(v%bb)/=[2]))print *,3021
deallocate(v%bb,v%b)
v%a=>c
allocate(v%b,source=v%a)
if (any(v%b/=['1','2','3']))print *,401,v%b
if (any(lbound(v%b)/=[2]))print *,402
deallocate(v%b)
allocate(v%b,source=f())
if (any(v%b/=['1','2','3']))print *,501,v%b
if (any(lbound(v%b)/=[2]))print *,502
deallocate(v%b)
allocate(v%b,source=e(2,4))
if (any(v%b/=['1','2','3']))print *,601,v%b
if (any(lbound(v%b)/=[2]))print *,602
deallocate(v%b)
allocate(v%b,source=(c))
if (any(v%b/=['1','2','3']))print *,1101,v%b
if (any(lbound(v%b)/=[1]))print *,1102
deallocate(v%b)
allocate(v%b,source=(d))
if (any(v%b/=['1','2','3']))print *,81101,v%b
if (any(lbound(v%b)/=[1]))print *,81102
deallocate(v%b)
allocate(v%b,source=(c(2::2)))
if (any(v%b/=['1','3']))print *,1201,v%b
if (any(lbound(v%b)/=[1]))print *,1202
deallocate(v%b)
allocate(v%b,source=(d(2::2)))
if (any(v%b/=['1','3']))print *,81201,v%b
if (any(lbound(v%b)/=[1]))print *,81202
deallocate(v%b)
allocate(v%a(2:4))
v%a=c
allocate(v%b,source=(v%a))
if (any(v%b/=['1','2','3']))print *,1301,v%b
if (any(lbound(v%b)/=[1]))print *,1302
deallocate(v%b)
v%a=>c
allocate(v%b,source=(v%a))
if (any(v%b/=['1','2','3']))print *,1401,v%b
if (any(lbound(v%b)/=[1]))print *,1402
deallocate(v%b)
allocate(v%b,source=(f()))
if (any(v%b/=['1','2','3']))print *,1501,v%b
if (any(lbound(v%b)/=[1]))print *,1502
deallocate(v%b)
allocate(v%b,source=(e(2,4)))
if (any(v%b/=['1','2','3']))print *,1601,v%b
if (any(lbound(v%b)/=[1]))print *,1602
deallocate(v%b)
allocate(v%b2,source=c//c)
if (any(v%b2/=['11','22','33']))print *,2101,v%b
if (any(lbound(v%b2)/=[1]))print *,2102
deallocate(v%b2)
allocate(v%b2,source=d//d)
if (any(v%b2/=['11','22','33']))print *,82101,v%b2
if (any(lbound(v%b2)/=[1]))print *,82102
deallocate(v%b2)
allocate(v%b2,source=d(2::2)//d(2::2))
if (any(v%b2/=['11','33']))print *,82201,v%b2
if (any(lbound(v%b2)/=[1]))print *,82202
deallocate(v%b2)
allocate(v%b2,source=c(2::2)//c(2::2))
if (any(v%b2/=['11','33']))print *,2201,v%b
if (any(lbound(v%b2)/=[1]))print *,2202
deallocate(v%b2)
allocate(v%a(2:4))
v%a=c
allocate(v%b2,source=v%a//v%a)
if (any(v%b2/=['11','22','33']))print *,2301,v%b
if (any(lbound(v%b2)/=[1]))print *,2302
deallocate(v%b2)
v%a=>c
allocate(v%b2,source=v%a//v%a)
if (any(v%b2/=['11','22','33']))print *,2401,v%b
if (any(lbound(v%b2)/=[1]))print *,2402
deallocate(v%b2)
allocate(v%b2,source=f()//f())
if (any(v%b2/=['11','22','33']))print *,2501,v%b2
if (any(lbound(v%b2)/=[1]))print *,2502
deallocate(v%b2)
allocate(v%b2,source=e(2,4)//e(2,4))
if (any(v%b2/=['11','22','33']))print *,2601,v%b2
if (any(lbound(v%b2)/=[1]))print *,2602
deallocate(v%b2)
contains
function f() result(r)
character , pointer::r(:)
allocate(r(2:4))
r=['1','2','3']
end function
function e(k1,k2) result(r)
character ::r(k1:k2)
r=['1','2','3']
end function
end 
call s1
print *,'pass'
end
