type :: str
integer,pointer :: ppp(:)
end type
type(str),pointer,dimension(:,:) :: sss01
type(str),pointer,dimension(:,:) :: sss02
type(str),pointer,dimension(:,:) :: sss03
type(str),pointer,dimension(:,:) :: sss04
allocate(sss01(4,4))
allocate(sss01(4,1)%ppp(2))
sss01(4,1)%ppp = (/1,2/)
sss02=>sss01
if (any(sss02(4,1)%ppp/=(/1,2/)))print *,sss02(4,1)%ppp

sss03(3:,4:)=>sss01
if (any(sss03(6,4)%ppp/=(/1,2/)))print *,sss03(6,4)%ppp

sss04(3:4,4:5)=>sss01(1:4,1)
if (any(sss04(4,5)%ppp/=(/1,2/)))print *,sss04(4,5)%ppp

print *,'ok'
end
