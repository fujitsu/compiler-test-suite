  integer(kind=4),target :: t1(5) = (/11,12,13,14,15/)
  integer(kind=4),pointer,dimension(:) :: pa1 => t1
if (pa1(1) .ne. 11 ) print *,'err'
if (pa1(2) .ne. 12 ) print *,'err'
if (pa1(3) .ne. 13 ) print *,'err'
if (pa1(4) .ne. 14 ) print *,'err'
if (pa1(5) .ne. 15 ) print *,'err'
print *,'pass'
end 
