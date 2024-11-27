subroutine s1
real,pointer::t01(:,:)
j=3
allocate(t01(3,j))
call sub(t01(:,j))
if (any(t01(:,j)/=(/11,12,13/)))write(6,*) "NG"
end
subroutine s2
real,allocatable::t01(:,:)
j=3
allocate(t01(3,j))
call sub(t01(:,j))
if (any(t01(:,j)/=(/11,12,13/)))write(6,*) "NG"
end
subroutine s3
real,pointer::t01(:,:),t02(:,:)
j=3
allocate(t02(6,j))
t01=>t02(1:6:2,:)
call s31(t01)
contains
subroutine s31(t01)
real,pointer::t01(:,:)
j=3
call sub(t01(:,j))
if (any(t01(:,j)/=(/11,12,13/)))write(6,*) "NG"
end subroutine s31
end
subroutine s4
real,pointer::t01(:,:),t02(:,:)
j=3
allocate(t02(6,j))
t01=>t02(1:6:2,:)
call sub(t01(:,j))
if (any(t01(:,j)/=(/11,12,13/)))write(6,*) "NG"
end
subroutine s5
real,pointer::t01(:,:),t02(:,:)
j=3
allocate(t02(3,j))
t01=>t02
call sub(t01(:,j))
if (any(t01(:,j)/=(/11,12,13/)))write(6,*) "NG"
end
subroutine sub(x)
real x(*)
x(1:3)=(/11,12,13/)
end
call s1
call s2
call s3
call s4
call s5
print *,'pass'
end
