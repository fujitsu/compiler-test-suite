subroutine init(val,n,seed)
  integer(kind=8)::val(n)
  integer n,seed

  do i = 1, n
     val(i) = i * seed
  enddo

end subroutine

subroutine func()
  integer(kind=4)::nn=40
  integer(kind=4)::i=0,j=0,l=0,m=0
  integer(kind=8)::v2=2,v3=3
  integer(kind=8),dimension(40)::a
  integer(kind=8)::aa=0

  call init(a,nn,3)

  do j=nn-1,11,-1
     a(j) = j
  enddo

  if (i<=l .or. i<=m) v2=4

  v3=v2

  do j=nn-1,11,-1
     aa = aa + a(j)
  enddo

  if ((aa .eq. 725) .and. (v2 .eq. 4) .and. (v3 .eq. 4)) then
     print *, "OK"
  else
     print *, "NG"
  end if

end subroutine


program main
  call func()
end program
