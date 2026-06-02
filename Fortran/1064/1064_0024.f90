module m1
 interface sub
   procedure sub01,sub02,sub08,sub04
 end interface
logical::f=.false.
contains
subroutine sub01(k1,k2)
integer(1):: k1(:)
 if (any(k1/=2)) print *,1001,k1
 if (k2/=1) print *,1002,k2
 if (size(k1)/=2) print *,1003
end subroutine
subroutine sub02(k1,k2)
integer(2):: k1(:)
 if (any(k1/=2)) print *,1011,k1
 if (k2/=2) print *,1012,k2
 if (size(k1)/=2) print *,1003
end subroutine
subroutine sub04(k1,k2)
integer(4):: k1(:)
 if (any(k1/=2)) print *,1021,k1
 if (k2/=4) print *,1022,k2
 if (size(k1)/=2) print *,1003
end subroutine
subroutine sub08(k1,k2)
integer(8):: k1(:)
 if (any(k1/=2)) print *,1031,k1
 if (k2/=8) print *,1032,k2
 if (size(k1)/=2) print *,1003
end subroutine
end

subroutine s1
use m1
integer:: a(4,2)=reshape([1,2,3,4,5,6,6,5],[4,2])
intrinsic findloc
call sub(findloc( a , 6 ,kind=1,  back=f.and..true.),1)
call sub(findloc( a , 6 ,kind=2,   back=f.and..true.),2)
call sub(findloc( a , 6 ,kind=4,   back=f.and..true.),4)
call sub(findloc( a , 6 ,kind=8,   back=f.and..true.),8)
call sub(findloc( a , 6           ,back=f.and..true.),4)
end
call s1
print *,'pass'
end
