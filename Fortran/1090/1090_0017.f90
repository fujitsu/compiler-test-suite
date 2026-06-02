integer :: n
n=2
associate (rr=>n)
 block
  dimension :: cSumx(2)
  character(rr) :: cSumx
  dimension :: cSuma(2)
  character(rr) :: cSuma*(2)
  dimension :: cSumb(rr)
  character     :: cSumb*(2)
if (size(cSuma) .ne. 2) print *,'ng'
if (size(cSumb) .ne. 2) print *,'ng'
if (size(cSumx) .ne. 2) print *,'ng'
if (len (cSuma) .ne. 2) print *,'ng'
if (len (cSumb) .ne. 2) print *,'ng'
if (len (cSumx) .ne. 2) print *,'ng'
cSumb='a'
cSuma='a'
cSumx='a'
 end block
end associate
print *,'sngg617r : pass'
end
