subroutine init(val,n,seed)
  integer(kind=8)::val(n)
  integer n,seed

  do i = 1, n
     val(i) = i * seed
  enddo

end subroutine

subroutine func(x)
  integer(kind=4)::nn=40
  integer(kind=4)::i=0,j=0,l=0
  integer(kind=8) x
  integer(kind=8)::v2=2,v3=3,v4=4,v5=5,v6=6
  integer(kind=8),dimension(40)::a
  integer(kind=8)::aa=0

  call init(a,nn,3)

  do j=nn-1,11,-1
     a(j) = j
  enddo

  v5=50

  if (i <= l) v2=4

  v3=v2*x
  v4=40
  v6=v5

  do j=nn-1,11,-1
     aa = aa + a(j)
  enddo

  if ((aa .eq. 725) .and. (v2 .eq. 4) .and. (v3 .eq. 80) .and. &
     (v4 .eq. 40) .and. (v5 .eq. 50) .and. (v6 .eq. 50)) then
     print *, "OK"
  else
     print *, "NG"
  end if

end subroutine


program main
  call func(20_8)
end program
