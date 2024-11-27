  call s1
  print *,'pass'
  end
subroutine s1
  character  a(2)/'1','2'/
  do i=1,1000
  call sub(a,1)
  end do
  contains
  subroutine sub(a,k)
  character*(*) a(:)
  j=0
  if (adjustl(a(k))==adjustl(a(k))) j=1 
    if (j/=1)write(6,*) "NG"
  j=0
  if (a(k)//a(k)=='11') j=1 
    if (j/=1)write(6,*) "NG"
end subroutine
  end
