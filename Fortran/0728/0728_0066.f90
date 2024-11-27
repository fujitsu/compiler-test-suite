  call s1
  print *,'pass'
  end
  subroutine sub(a,k)
  integer a(:)
  if (lbound(a,lbound(a,k)))1,2,3
1  write(6,*) "NG"
2  write(6,*) "NG"
3  continue
  goto (11,12,13),ubound(a,lbound(a,k))
11  write(6,*) "NG"
13  write(6,*) "NG"
12 continue
  call sb(*21,*22,*23,ubound(a,lbound(a,k)))
21  write(6,*) "NG"
23  write(6,*) "NG"
22 continue
end subroutine
subroutine s1
  interface
  subroutine sub(a,k)
  integer a(:)
 end subroutine
  end interface
  integer a(2)/1,2/
  do i=1,1000
  call sub(a,1)
  end do
  end
subroutine sb(*,*,*,i)
if (i/=2)write(6,*) "NG"
return 2
end
