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

subroutine ss41(aa1)
integer,allocatable::aa1(:,:)
integer,allocatable::aa2(:,:)
integer,allocatable::aa3(:,:)
integer,allocatable::aa4(:,:)
allocate(aa1(2,3))
return
entry      ss42(aa2)
allocate(aa2(2,3))
return
entry      ss43(aa3)
allocate(aa3(2,3))
return
entry      ss44(aa4)
allocate(aa4(2,3))
end subroutine

subroutine ss51(aa1)
integer,allocatable::aa1(:,:)
integer,allocatable::aa2(:,:)
integer,allocatable::aa4(:,:)
allocate(aa1(2,3))
return
entry      ss52(aa2)
allocate(aa2(2,3))
return
entry      ss53(aa1)
allocate(aa1(2,3))
return
entry      ss54(aa4)
allocate(aa4(2,3))
end subroutine

subroutine ss61(a,aa1)
integer,allocatable::aa1(:,:),a(:,:)
integer,allocatable::aa2(:,:)
integer,allocatable::aa4(:,:)
allocate(a(2,3),aa1(2,3))
return
entry      ss62(a,aa2)
allocate(a(2,3),aa2(2,3))
return
entry      ss63(a,aa1)
allocate(a(2,3),aa1(2,3))
return
entry      ss64(a,aa4)
allocate(a(2,3),aa4(2,3))
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
subroutine s4
use m1
integer,allocatable::a1(:,:)
integer,allocatable::a2(:,:)
integer,allocatable::a3(:,:)
integer,allocatable::a4(:,:)
call ss41(a1)
if (any(ubound(a1)/=[2,3]))print *,501
call ss42(a2)
if (any(ubound(a2)/=[2,3]))print *,502
call ss43(a3)
if (any(ubound(a3)/=[2,3]))print *,503
call ss44(a4)
if (any(ubound(a4)/=[2,3]))print *,504
end
subroutine s5
use m1
integer,allocatable::a1(:,:)
integer,allocatable::a2(:,:)
integer,allocatable::a3(:,:)
integer,allocatable::a4(:,:)
call ss51(a1)
if (any(ubound(a1)/=[2,3]))print *,601
call ss52(a2)
if (any(ubound(a2)/=[2,3]))print *,602
call ss53(a3)
if (any(ubound(a3)/=[2,3]))print *,603
call ss54(a4)
if (any(ubound(a4)/=[2,3]))print *,604
end
subroutine s6
use m1
integer,allocatable::a1(:,:)
integer,allocatable::a2(:,:)
integer,allocatable::a3(:,:)
integer,allocatable::a4(:,:)
integer,allocatable::b1(:,:)
integer,allocatable::b2(:,:)
integer,allocatable::b3(:,:)
integer,allocatable::b4(:,:)
call ss61(b1,a1)
if (any(ubound(a1)/=[2,3]))print *,601
if (any(ubound(b1)/=[2,3]))print *,611
call ss62(b2,a2)
if (any(ubound(a2)/=[2,3]))print *,602
if (any(ubound(b2)/=[2,3]))print *,612
call ss63(b3,a3)
if (any(ubound(a3)/=[2,3]))print *,603
if (any(ubound(b3)/=[2,3]))print *,613
call ss64(b4,a4)
if (any(ubound(a4)/=[2,3]))print *,604
if (any(ubound(b4)/=[2,3]))print *,614
end

call s1
call s2
call s3
call s4
call s5
call s6
print *,'pass'
end

