call ss1
call ss2
  print *,'pass'
end
subroutine ss1
  integer a(2),b(2),c(2),d(2),e(2)
  a=-1
  b=0
  c=32
  e=0
  call mvbits(FROM=a,FROMPOS=b,LEN=c,TO=d,TOPOS=e)
if (any(d/=-1))print *,'error-1'
  end
subroutine ss2
  integer a,b,c,d,e
  a=-1
  b=0
  c=32
  e=0
  call mvbits(FROM=a,FROMPOS=b,LEN=c,TO=d,TOPOS=e)
if ((d/=-1))print *,'error-2'
  end
