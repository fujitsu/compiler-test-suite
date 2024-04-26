subroutine s1
logical m(3,2)
integer,dimension(3,2)::v
v(1:3:2,1:2)=1
m=.false.
m(1:3:2,1:2)=.true.
where (m)
v=v+1
end where
if (any(v(1:3:2,:)/=2))print *,v(1:3:2,:)
end
call s1
print *,'pass'
end
