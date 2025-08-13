 call s1
 print *,'pass'
 end
 subroutine s1
  if (ifun(1,'123')/=1)write(6,*) "NG"
  call sub('123')
  if (ifun1(1,(/'123'/))/=1)write(6,*) "NG"
  call sub1(1,(/'123'/))
 end
 function ifun(i,j)
 namelist /nnnn/ j
 character(len=*) j
 ifun=i
 write(69,nnnn)
 end
 subroutine sub(j)
 namelist /nnnn/ j
 character(len=*) j
 write(69,nnnn)
 end
 function ifun1(i,j)
 namelist /nnnn/ j
 character(len=*) j(i)
 ifun1=1
 write(69,nnnn)
 end
 subroutine sub1(i,j)
 namelist /nnnn/ j
 character(len=*) j(i)
 write(69,nnnn)
 end
