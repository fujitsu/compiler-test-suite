call test01()
print *,"pass"
end
subroutine test01()
integer ,parameter :: drr(3)=(/real(8)   :: 1,-1,2511111111111116/)
integer ,parameter :: crr(3)=(/real(4)   :: 1,-1,2511111111111116/)
integer ,parameter :: brr(3)=(/integer(1):: 1,-1,256/)
integer ,parameter :: arr(3)=(/integer(1):: 1,-1,214899888888/)
end
subroutine test02()
character  ,parameter :: arr(3)=(/character(65001):: "1","1","1"/)
character  ,parameter :: brr(3)=(/character(1):: repeat("1",65001),"1","1"/)
character   :: vrr(3)
vrr=(/character(1):: repeat("1",65001),"1","1"/)
end

