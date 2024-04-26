type :: str1
  integer,allocatable :: ppp(:)
end type
type :: str2
  integer,pointer :: ppp(:)
end type
type(str1),pointer :: sss01(:,:),qqq01(:,:)
type(str2),pointer :: sss02(:,:),qqq02(:,:)
allocate(sss01(2,4))
allocate(sss01(1,1)%ppp(3),source=(/1,2,3/))
allocate(sss01(2,1)%ppp(4),source=(/2,3,4,5/))
allocate(sss01(1,2)%ppp(5),source=(/3,4,5,6,7/))
allocate(sss01(2,2)%ppp(6),source=(/4,5,6,7,8,9/))
allocate(sss01(1,3)%ppp(7),source=(/5,6,7,8,9,10,11/))
allocate(sss01(2,3)%ppp(8),source=(/6,7,8,9,10,11,12,13/))
allocate(sss01(1,4)%ppp(9),source=(/7,8,9,10,11,12,13,14,15/))
allocate(sss01(2,4)%ppp(10),source=(/8,9,10,11,12,13,14,15,16,17/))
qqq01(lbound(sss01,1)+1:,lbound(sss01,1):)=>sss01
print *,qqq01(2,2)%ppp
print *,qqq01(3,2)%ppp
print *,qqq01(2,3)%ppp
print *,qqq01(3,3)%ppp
qqq01(ubound(sss01,2):ubound(sss01,2)+1,ubound(sss01,2)+1:ubound(sss01,2)+2)=>sss01(2,1:4)
print *,qqq01(4,5)%ppp
print *,qqq01(5,5)%ppp
print *,qqq01(4,6)%ppp
print *,qqq01(5,6)%ppp
allocate(sss02(2,4))
allocate(sss02(1,1)%ppp(3),source=(/1,2,3/))
allocate(sss02(2,1)%ppp(4),source=(/2,3,4,5/))
allocate(sss02(1,2)%ppp(5),source=(/3,4,5,6,7/))
allocate(sss02(2,2)%ppp(6),source=(/4,5,6,7,8,9/))
allocate(sss02(1,3)%ppp(7),source=(/5,6,7,8,9,10,11/))
allocate(sss02(2,3)%ppp(8),source=(/6,7,8,9,10,11,12,13/))
allocate(sss02(1,4)%ppp(9),source=(/7,8,9,10,11,12,13,14,15/))
allocate(sss02(2,4)%ppp(10),source=(/8,9,10,11,12,13,14,15,16,17/))
qqq02(lbound(sss02,1)+1:,lbound(sss02,1):)=>sss02
print *,qqq02(2,2)%ppp
print *,qqq02(3,2)%ppp
print *,qqq02(2,3)%ppp
print *,qqq02(3,3)%ppp
qqq02(ubound(sss02,2):ubound(sss02,2)+1,ubound(sss02,2)+1:ubound(sss02,2)+2)=>sss02(2,1:4)
print *,qqq02(4,5)%ppp
print *,qqq02(5,5)%ppp
print *,qqq02(4,6)%ppp
print *,qqq02(5,6)%ppp
print *,'ok'
end
