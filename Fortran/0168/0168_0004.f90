module m1
 logical,parameter::t=.true.,f=.false.
 logical,parameter,dimension(*):: p1= [T,T,T,T,F,T]
 logical,parameter,dimension(*,*):: p2= reshape(p1,[2,3])
 intrinsic parity
contains
subroutine sx01( z1 , z2 , n)
logical::z1,z2
if (z1.neqv.z2) print *,1001,z1,z2,n
end subroutine
subroutine sx02( z1 , z2 , n)
logical,dimension(:)::z1,z2
if (any(shape(z1)/=shape(z2))) print *,1003,shape(z1),shape(z2),n
if (any(z1.neqv.z2)) print *,1002,z1,z2,z1.neqv.z2,n
end subroutine
end
subroutine s1
use m1
call sx01(parity( p1 ) , T,1)
call sx01(parity( p2 ) , T,2)
call sx02(parity( p2 ,dim=1) , [F,F,T],3)
call sx02(parity( p2 ,dim=2) , [F,T],4)
call sx01(parity( p1.or.p1 ) , T,11)
call sx01(parity( p2.or.p2 ) , T,12)
call sx02(parity( p2.or.p2 ,dim=1) , [F,F,T],13)
call sx02(parity( p2.or.p2 ,dim=2) , [F,T],14)
end
call s1
print *,'pass'
end
