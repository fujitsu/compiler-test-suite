module m1
contains
subroutine ss11(aa1)
integer,allocatable::aa1(:,:)
allocate(aa1(2,3))
end subroutine

subroutine ss21(aa1)
integer,allocatable::aa1(:,:)
entry      ss22(aa1)
allocate(aa1(2,3))
end subroutine

subroutine ss31(aa1)
integer,allocatable::aa1(:,:)
integer,allocatable::aa2(:,:)
allocate(aa1(2,3))
return
entry      ss32(aa2)
allocate(aa2(2,3))
end subroutine
end
subroutine s1
use m1
integer,allocatable::a1(:,:)
call ss11(a1)
if (any(ubound(a1)/=[2,3]))print *,201
end
subroutine s2
use m1
integer,allocatable::a1(:,:)
integer,allocatable::a2(:,:)
call ss21(a1)
if (any(ubound(a1)/=[2,3]))print *,301
call ss22(a2)
if (any(ubound(a1)/=[2,3]))print *,302
end
subroutine s3
use m1
integer,allocatable::a1(:,:)
integer,allocatable::a2(:,:)
call ss31(a1)
if (any(ubound(a1)/=[2,3]))print *,401
call ss32(a2)
if (any(ubound(a2)/=[2,3]))print *,402
end


call s1
call s2
call s3
print *,'pass'
end

