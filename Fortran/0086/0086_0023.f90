call s1
call s2
print *,'pass'
contains
subroutine s1
real(4)::aa1(2),bbb(2,3),j(2),aa2(2),aa3(2),aa4(2),aa5(2)
integer::k
bbb=2
k=2
j=10
where(k<j(:))
aa1=bbb(:,k)**1
end where
where(k<j(:))
aa2=bbb(:,k)**2
end where
where(k<j(:))
aa3=bbb(:,k)**3
end where
where(k<j(:))
aa4=bbb(:,k)**4
end where
where(k<j(:))
aa5=bbb(:,k)**5
end where
if(any(aa1/=[2.0,2.0])) print *,'err'
if(any(aa2/=[4.0,4.0])) print *,'err'
if(any(aa3/=[8.0,8.0])) print *,'err'
if(any(aa4/=[16.0,16.0])) print *,'err'
if(any(aa5/=[32.0,32.0])) print *,'err'
end subroutine s1
subroutine s2
real(8)::aa1(2),bbb(2,3),j(2),aa2(2),aa3(2),aa4(2),aa5(2)
integer::k
bbb=2
k=2
j=10
where(k<j(:))
aa1=bbb(:,k)**1
end where
where(k<j(:))
aa2=bbb(:,k)**2
end where
where(k<j(:))
aa3=bbb(:,k)**3
end where
where(k<j(:))
aa4=bbb(:,k)**4
end where
where(k<j(:))
aa5=bbb(:,k)**5
end where
if(any(aa1/=[2.0_8,2.0_8])) print *,'err'
if(any(aa2/=[4.0_8,4.0_8])) print *,'err'
if(any(aa3/=[8.0_8,8.0_8])) print *,'err'
if(any(aa4/=[16.0_8,16.0_8])) print *,'err'
if(any(aa5/=[32.0_8,32.0_8])) print *,'err'
end subroutine s2
end

