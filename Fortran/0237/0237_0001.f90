subroutine s1
integer,parameter::a1(3,2)=reshape([1,2,3,4,5,6],[3,2])
integer,parameter::a2(3,2)=cshift(a1,2,2)
call ss(a1,a2)
contains
subroutine ss(x1,x2)
integer::x1(:,:),x2(:,:)
if (any(x2/=cshift(x1,2,2)))then
  print *,x2
  print *,cshift(x1,2,2)
endif
end subroutine
end
call s1
print *,'pass'
end
