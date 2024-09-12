module m1
contains
subroutine s1(n1)
integer,pointer::x1(:)
integer,target::t1(3)=[1,2,3]
integer,parameter::cc(2)=[1,3]
integer        ::t2(2)=[1,3]
integer        ::t3(2)=[0,2]
if (n1==1) then
  allocate(x1(2))
  x1=[1,3]
else if (n1==2) then
  x1=>t1(::2)
else
  x1=>null()
endif
call ss1(x1 ,[n1,n1+1])
call ss1([x1],[n1,n1+1])
call ss1(cc  ,[n1,n1+1])
call ss1([1,3] ,[n1,n1+1])
call ss1(t1(::2),[n1,n1+1])
call ss1(t2   ,[n1,n1+1])
call ss1(t3+1 ,[n1,n1+1])
if (ks1(x1,[n1,n1+1])/=0) print *,1001
if (ks1([x1],[n1,n1+1]) /=0) print *,1002
if (ks1(cc  ,[n1,n1+1]) /=0) print *,1003
if (ks1([1,3] ,[n1,n1+1]) /=0) print *,1004
if (ks1(t1(::2),[n1,n1+1]) /=0) print *,1005
if (ks1(t2   ,[n1,n1+1]) /=0) print *,1006
if (ks1(t3+1 ,[n1,n1+1]) /=0) print *,1007
end subroutine
subroutine ss1(a1,a2)
integer::a1(2),a2(2)
if (a2(1)==1 .or. a2(1)==2) then
 if (any(a1/=[1,3])) print *,201
endif
end subroutine
function   ks1(a1,a2)
integer,optional,intent(in)::a1(2),a2(2)
if (a2(1)==1 .or. a2(1)==2) then
 if (any(a1/=[1,3])) print *,301
endif
ks1=0
end function
end
use m1
call s1(1)
call s1(2)
print *,'pass'
end

  
