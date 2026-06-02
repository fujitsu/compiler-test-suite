integer :: n
n=2
associate (rr=>n)
 block
  dimension :: cSumx(rr)
  character(rr) :: cSumx
  dimension :: cSuma(rr)
  character(rr) :: cSuma*(2)
  dimension :: cSumb(rr)
  character     :: cSumb*(2)
  character(rr) :: bSumx
  dimension :: bSumx(rr)
  character(rr) :: bSuma*(2)
  dimension :: bSuma(rr)
  character     :: bSumb*(2)
  dimension :: bSumb(rr)
if (size(cSuma) .ne. 2) print *,'ng'
if (size(cSumb) .ne. 2) print *,'ng'
if (size(cSumx) .ne. 2) print *,'ng'
if (size(bSuma) .ne. 2) print *,'ng'
if (size(bSumb) .ne. 2) print *,'ng'
if (size(bSumx) .ne. 2) print *,'ng'
cSumb='a'
cSuma='a'
cSumx='a'
 end block
end associate
print *,'pass'
end
