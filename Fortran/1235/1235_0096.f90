integer :: n
n=2
associate (rr=>n)
 block
  dimension :: cSumx(2)
  character(rr) :: cSumx
  dimension :: cSuma(2)
  character(rr) :: cSuma*(2)
  dimension :: cSumb(2)
  character     :: cSumb*(2)
if (size(cSuma) .ne. 2) print *,'ng'
if (size(cSumb) .ne. 2) print *,'ng'
if (size(cSumx) .ne. 2) print *,'ng'
cSumb='a'
cSuma='a'
cSumx='a'
 end block
end associate
print *,'pass'
end
