subroutine sub1(a,b,loop_size)
  complex(4),dimension(5)::a,b
  integer i,loop_size,k
  k=loop_size-1
  do i=1,loop_size
     a(i)=a(i)+b(k)
  end do
end subroutine sub1

program main
  complex(4),dimension(5)::a,b
  integer loop_size,i

  loop_size=5
  do i=1,loop_size
     b(i)=cmplx(i,i+1)
  end do

  a=0

  call sub1(a,b,loop_size)
  if(int(cabs(sum(a)))==32)then
     print *,'sub1 : OK'
  else
     print *,'sub1 : NG',int(cabs(sum(a))),'!=',32
  endif
end program main
