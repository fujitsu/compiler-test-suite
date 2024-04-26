subroutine movecc(a,b,c,d,e,f)
  integer,dimension(1024)::a,b,c,d,e,f
  do i=1,1024
    if ( i .lt. 1024/2 ) then
       a(i) = i
    else
       a(i) = -i
    endif	
    if ( i .le. 1024/2 ) then
       b(i) = i
    else
       b(i) = -i
    endif	
    if ( i .gt. 1024/2 ) then
       c(i) = i
    else
       c(i) = -i
    endif	
    if ( i .ge. 1024/2 ) then
       d(i) = i
    else
       d(i) = -i
    endif	
    if ( i .eq. 1024/2 ) then
       e(i) = i
    else
       e(i) = -i
    endif	
    if ( i .ne. 1024/2 ) then
       f(i) = i
    else
       f(i) = -i
    endif	
    
  enddo
end subroutine

subroutine fands(A,B,C,D,E,F,G)
  real (kind=8),dimension(1024)::A,B,C,D,E,F,G
  real (kind=8)::X,Y
  X = 0
  Y = 1

  do i=0,1024
    if (B(i) .lt. A(i)) then
      B(i) = X
    else
      B(i) = Y
    endif
  enddo

  do i=0,1024
    if (C(i) .le. A(i)) then
      C(i) = X
    else
      C(i) = Y
    endif
  enddo

  do i=0,1024
    if (D(i) .gt. A(i)) then
      D(i) = X
    else
      D(i) = Y
    endif
  enddo

  do i=0,1024
    if (E(i) .ge. A(i)) then
      E(i) = X
    else
      E(i) = Y
    endif
  enddo

  do i=0,1024
    if (F(i) .eq. A(i)) then
      F(i) = X
    else
      F(i) = Y
    endif
  enddo

  do i=0,1024
    if (G(i) .ne. A(i)) then
      G(i) = X
    else
      G(i) = Y
    endif
  enddo
end subroutine fands


program main
      print *, "OK"
end program main
