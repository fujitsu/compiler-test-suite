subroutine sub()
associate (ir2=>2 )
 block
  integer :: brr(ir2)
  integer :: arr(size(brr))
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
call sub()
print *,'pass'
end
