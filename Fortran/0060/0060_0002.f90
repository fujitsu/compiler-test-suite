  Program Main
  complex*32 :: d,d1,d2
  d=  (0.0_16,0.0_16) * (-30.0_16,-30.0_16)  
if (d/=0) print *,101
  d1=  (0.0_16,0.0_16) 
d2= d1* (-30.0_16,-30.0_16)  
if (d2/=0) print *,102
  d=  0               * (-30.0_16,-30.0_16)  
if (d/=0) print *,103
  d=  0               * (1._16,1._16)  
if (d/=0) print *,104
  d=  0               * (-3.0_16,-3.0_16)  
if (d/=0) print *,105
  d=  0               * (-1.0_16,-1.0_16)  
if (d/=0) print *,106
  if (0               * (-1.0_16)/=0) print *,201
  write(1, '(z32.32)')0               * (-1.0_16)
  if (0               * (-1.0_8)/=0) print *,301
  write(1,'(z16.16)')0               * (-1.0_8)
call chk
print *,'pass'
  end
subroutine chk
character(32) a
character(16) b
rewind 1
read(1,'(a)') a
if (a/='80000000000000000000000000000000')print *,101
read(1,'(a)') a
if (a/='8000000000000000')print *,102
end

