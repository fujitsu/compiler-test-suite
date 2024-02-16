call s1
call s2
call s3
print *,'pass'
contains
subroutine s1
integer(2)::aaa(2),bbb(2,3),j(2)
bbb=2
k=2
j=10
where(k<j(:))
aaa=bbb(:,k)**2
end where
if(any(aaa/=[4.0,4.0])) print *,'err'
end subroutine s1
subroutine s2
integer(4)::aaa(2),bbb(2,3),j(2)
bbb=2
k=2
j=10
where(k<j(:))
aaa=bbb(:,k)**2
end where
if(any(aaa/=[4.0,4.0])) print *,'err'
end subroutine s2
subroutine s3
integer(8)::aaa(2),bbb(2,3),j(2)
bbb=2
k=2
j=10
where(k<j(:))
aaa=bbb(:,k)**2
end where
if(any(aaa/=[4.0,4.0])) print *,'err'
end subroutine s3
end

