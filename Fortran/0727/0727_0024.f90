 call s1
 print *,'pass'
 end
 subroutine s1
 i=1
 call s11(i)
  rewind 3
  do j=1,10
  read(3,*) a1,a2
  if (a1/=2.0)write(6,*) "NG"
  if (a2/=.0)write(6,*) "NG"
  end do
end
recursive subroutine s11(i)
  double precision ::  A1(1), A2(1,1)
  A1(1)=1; A2(1,1)=2
  write(3,*) matmul(a1(:),a2(:,:))
  write(3,*) matmul(a1(:0),a2(:0,:))
  if (i>10) return
  call s11(i+1)
end
