subroutine s1
character,pointer::a(:)
character,allocatable::b(:),bb(:)
character(2),allocatable::b2(:)
character,target::c(2:4)=['1','2','3']
character,parameter::d(2:4)=['1','2','3']
allocate(b,source=c)
if (any(b/=['1','2','3']))print *,101,b
if (any(lbound(b)/=[2]))print *,102
deallocate(b)
allocate(b,source=d)
if (any(b/=['1','2','3']))print *,8101,b
if (any(lbound(b)/=[2]))print *,8102
deallocate(b)
allocate(b,source=c(2::2))
if (any(b/=['1','3']))print *,201,b
if (any(lbound(b)/=[1]))print *,202
deallocate(b)
allocate(b,source=d(2::2))
if (any(b/=['1','3']))print *,8201,b
if (any(lbound(b)/=[1]))print *,8202
deallocate(b)
allocate(a(2:4))
a=c
allocate(b,source=a)
if (any(b/=['1','2','3']))print *,301,b
if (any(lbound(b)/=[2]))print *,302
allocate(bb,source=b)
if (any(bb/=['1','2','3']))print *,3011,bb
if (any(lbound(bb)/=[2]))print *,3021
deallocate(bb,b)
a=>c
allocate(b,source=a)
if (any(b/=['1','2','3']))print *,401,b
if (any(lbound(b)/=[2]))print *,402
deallocate(b)
allocate(b,source=f())
if (any(b/=['1','2','3']))print *,501,b
if (any(lbound(b)/=[2]))print *,502
deallocate(b)
allocate(b,source=e(2,4))
if (any(b/=['1','2','3']))print *,601,b
if (any(lbound(b)/=[1]))print *,602
deallocate(b)
allocate(b,source=(c))
if (any(b/=['1','2','3']))print *,1101,b
if (any(lbound(b)/=[1]))print *,1102
deallocate(b)
allocate(b,source=(d))
if (any(b/=['1','2','3']))print *,81101,b
if (any(lbound(b)/=[1]))print *,81102
deallocate(b)
allocate(b,source=(c(2::2)))
if (any(b/=['1','3']))print *,1201,b
if (any(lbound(b)/=[1]))print *,1202
deallocate(b)
allocate(b,source=(d(2::2)))
if (any(b/=['1','3']))print *,81201,b
if (any(lbound(b)/=[1]))print *,81202
deallocate(b)
allocate(a(2:4))
a=c
allocate(b,source=(a))
if (any(b/=['1','2','3']))print *,1301,b
if (any(lbound(b)/=[1]))print *,1302
deallocate(b)
a=>c
allocate(b,source=(a))
if (any(b/=['1','2','3']))print *,1401,b
if (any(lbound(b)/=[1]))print *,1402
deallocate(b)
allocate(b,source=(f()))
if (any(b/=['1','2','3']))print *,1501,b
if (any(lbound(b)/=[1]))print *,1502
deallocate(b)
allocate(b,source=(e(2,4)))
if (any(b/=['1','2','3']))print *,1601,b
if (any(lbound(b)/=[1]))print *,1602
deallocate(b)
allocate(b2,source=c//c)
if (any(b2/=['11','22','33']))print *,2101,b
if (any(lbound(b2)/=[1]))print *,2102
deallocate(b2)
allocate(b2,source=d//d)
if (any(b2/=['11','22','33']))print *,82101,b2
if (any(lbound(b2)/=[1]))print *,82102
deallocate(b2)
allocate(b2,source=d(2::2)//d(2::2))
if (any(b2/=['11','33']))print *,82201,b2
if (any(lbound(b2)/=[1]))print *,82202
deallocate(b2)
allocate(b2,source=c(2::2)//c(2::2))
if (any(b2/=['11','33']))print *,2201,b
if (any(lbound(b2)/=[1]))print *,2202
deallocate(b2)
allocate(a(2:4))
a=c
allocate(b2,source=a//a)
if (any(b2/=['11','22','33']))print *,2301,b
if (any(lbound(b2)/=[1]))print *,2302
deallocate(b2)
a=>c
allocate(b2,source=a//a)
if (any(b2/=['11','22','33']))print *,2401,b
if (any(lbound(b2)/=[1]))print *,2402
deallocate(b2)
allocate(b2,source=f()//f())
if (any(b2/=['11','22','33']))print *,2501,b2
if (any(lbound(b2)/=[1]))print *,2502
deallocate(b2)
allocate(b2,source=e(2,4)//e(2,4))
if (any(b2/=['11','22','33']))print *,2601,b2
if (any(lbound(b2)/=[1]))print *,2602
deallocate(b2)
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
