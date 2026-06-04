integer :: n
n=2
associate (rr=>n)
 block
  dimension :: cSumx(2 )
  character(rr) :: cSumx
  dimension :: cSuma(2 )
  character(rr) :: cSuma*(rr)
  dimension :: cSumb(2 )
  character     :: cSumb*(rr)
  character(rr) :: bSumx
  dimension :: bSumx(2 )
  character(rr) :: bSuma*(rr)
  dimension :: bSuma(2 )
  character     :: bSumb*(rr)
  dimension :: bSumb(2 )
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
