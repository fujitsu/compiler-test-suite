call test01()
print *,"pass"
end

subroutine test01()
integer :: arr(10)
arr=1
if (kind(maxloc(arr,1.eq.2,2)) .ne.2 ) call errtra
if (kind(maxloc(arr,1.eq.2,kind(1_1))) .ne.1 ) call errtra
if (kind(maxloc(arr,1,1.eq.2,kind(1_8))) .ne.8 ) call errtra
if (kind(maxloc(arr,1,1.eq.2)) .ne.4 ) call errtra
if (kind(maxloc(arr,1)) .ne.4 ) call errtra
if (kind(maxloc(arr,1,kind=kind(1_4))) .ne.4 ) call errtra
end