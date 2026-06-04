subroutine sub()
associate (ir2=>2 )
 block
  character(ir2) :: brr
  character(len(brr)) :: arr
arr='ab'
brr='01'
if (len (arr).ne.2) print *,101
if (len (brr).ne.2) print *,102
if (arr(1:1).ne.'a') print *,103
if (arr(2:2).ne.'b') print *,104
if (brr(1:1).ne.'0') print *,105
if (brr(2:2).ne.'1') print *,106
 end block
end associate
end
call sub()
print *,'pass'
end
