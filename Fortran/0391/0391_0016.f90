module m1
integer::k1
contains
subroutine s1(n1)
integer,pointer::x1(:),y1(:)
integer,target::t1(3)=[1,2,3]
integer,parameter::cc(2)=[1,3]
integer        ::t2(2)=[1,3]
integer        ::t3(2)=[0,2]
k1=n1
  y1=>null()
if (n1==1) then
  allocate(x1(2))
  x1=[1,3]
else if (n1==2) then
  x1=>t1(::2)
else
  x1=>null()
endif
call ss1(y1,x1 )
call ss1(y1,[x1])
call ss1(y1,cc  )
call ss1(y1,[1,3] )
call ss1(y1,t1(::2))
call ss1(y1,t2   )
call ss1(y1,t3+1 )
if (ks1(y1,x1)/=0) print *,1001
if (ks1(y1,[x1]) /=0) print *,1002
if (ks1(y1,cc  ) /=0) print *,1003
if (ks1(y1,[1,3] ) /=0) print *,1004
if (ks1(y1,t1(::2)) /=0) print *,1005
if (ks1(y1,t2   ) /=0) print *,1006
if (ks1(y1,t3+1 ) /=0) print *,1007
if (n1==1) then
  deallocate(x1)
endif
end subroutine
subroutine ss1(a0,a1,a2)
integer,optional::a1(2),a2(2),a0(2)
 if (     present(a0)) print *,20002
 if (     present(a2)) print *,20002
if (k1==1 .or. k1==2) then
 if (any(a1/=[1,3])) print *,201
 if (.not.present(a1)) print *,20001
else
 if (.not.present(a1)) print *,20012
endif
end subroutine
function   ks1(a0,a1,a2)
integer,optional::a1(2),a2(2),a0(2)
 if (present(a0)) print *,30011
if (k1==1 .or. k1==2) then
 if (any(a1/=[1,3])) print *,301
 if (.not.present(a1)) print *,30001
else
 if (.not.present(a1)) print *,30101
 if (     present(a0)) print *,30102
endif
ks1=0
end function
end
use m1
call s1(1)
call s1(2)
print *,'pass'
end
