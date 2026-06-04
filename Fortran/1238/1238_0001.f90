subroutine sub01()
associate (ir2=>2 )
 block
  integer :: brr(ir2)
  !integer :: arr(size(brr(:)))
  integer :: arr(size(brr(1:2)))
arr=(/1,2/)
brr=(/3,4/)
if (size(arr).ne.2) print *,101
if (size(brr).ne.2) print *,102
if (arr(1).ne.1) print *,103
if (arr(2).ne.2) print *,104
if (brr(1).ne.3) print *,105
if (brr(2).ne.4) print *,106
 end block
end associate
end
subroutine sub02()
associate (ir2=>2,ir3=>1 )
 block
  integer :: crr(ir3)
  integer :: brr(ir2)
  !integer :: arr(size(crr),size(brr))
  integer :: arr(size(crr(1:1)),size(brr(1:2)))
arr(1,1)=1
arr(1,2)=2
brr=(/3,4/)
crr=(/0/)
if (size(arr).ne.2) print *,101
if (size(brr).ne.2) print *,102
if (size(crr).ne.1) print *,103
if (arr(1,1).ne.1) print *,104
if (arr(1,2).ne.2) print *,105
if (brr(1).ne.3) print *,106
if (brr(2).ne.4) print *,107
if (crr(1).ne.0) print *,108
 end block
end associate
end
call sub01()
call sub02()
print *,'pass'
end
