integer :: n
n=2
associate (rr=>n)
 block
  dimension :: cSumx(rr)
  character(rr) :: cSumx
  dimension :: cSuma(rr)
  character(rr) :: cSuma*(rr)
  dimension :: cSumb(rr)
  character     :: cSumb*(rr)
  character(rr) :: bSumx
  dimension :: bSumx(rr)
  character(rr) :: bSuma*(rr)
  dimension :: bSuma(rr)
  character     :: bSumb*(rr)
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
