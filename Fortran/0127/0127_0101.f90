subroutine init(val,n,seed)
  integer(kind=8)::val(n)
  integer n,seed

  do i = 1, n
     val(i) = i * seed
  enddo

end subroutine

subroutine func()
  integer(kind=4)::nn=40
  integer(kind=4)::i=0,j=0,l=0
  integer(kind=8)::v2=2
  integer(kind=8),dimension(40)::v3
  integer(kind=8),dimension(40)::a
  integer(kind=8)::aa=0
  integer(kind=8)::allv3=0

  call init(v3,nn,3)

  do j=nn-1,11,-1
     a(j) = j
  enddo

  if (i <= l) v2=4

  v3(1)=v2

  do j=nn-1,11,-1
     aa = aa + a(j)
  enddo

  do j = 1, nn
     allv3=allv3+v3(j)
  enddo

  if ((aa .eq. 725) .and. (v2 .eq. 4) .and. (allv3 .eq. 2461) .and. (v3(1) .eq. 4)) then
     print *, "OK"
  else
     print *, "NG"
  end if

end subroutine


program main
  call func()
end program
