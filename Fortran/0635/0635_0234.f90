  real(8),dimension(1:10,1:950) :: a
  real(8),dimension(1:10,1:950) :: b
  n = 950
  call  sub(a, b, n)
end

subroutine sub(a, b, n)
  integer answer1,answer2,answer3,answer4,answer5,&
          answer6,answer7,answer8,answer9,answer10
  real(8),dimension(1:10,1:950) :: a
  real(8),dimension(1:10,1:950) :: b

  answer1 = 0
  answer2 = 0
  answer3 = 0
  answer4 = 0
  answer5 = 0
  do k = 1,950
    do j = 1,10
      b(j,k) = k+j
    enddo
  enddo
  do jj = 1,10
     a(jj,1) = jj *5
  enddo

  do ii = 1,10
        a(1,1) = b(1,1) + b(1,1)*2
        a(2,1) = b(2,1) + b(2,1)*2
        a(3,1) = b(3,1) + b(3,1)*2
        a(4,1) = b(4,1) + b(4,1)*2
        a(5,1) = b(5,1) + b(5,1)*2
        a(6,1) = b(6,1) + b(6,1)*2
        a(7,1) = b(7,1) + b(7,1)*2
        a(8,1) = b(8,1) + b(8,1)*2
        a(9,1) = b(9,1) + b(9,1)*2
        a(10,1) = b(10,1) + b(10,1)*2
        a(1,n-1) = b(1,1) + b(1,n-1)*2
        a(2,n-1) = b(2,1) + b(2,n-1)*2
        a(3,n-1) = b(3,1) + b(3,n-1)*2
        a(4,n-1) = b(4,1) + b(4,n-1)*2
        a(5,n-1) = b(5,1) + b(5,n-1)*2
        a(6,n-1) = b(6,1) + b(6,n-1)*2
        a(7,n-1) = b(7,1) + b(7,n-1)*2
        a(8,n-1) = b(8,1) + b(8,n-1)*2
        a(9,n-1) = b(9,1) + b(9,n-1)*2
        a(10,n-1) = b(10,1) + b(10,n-1)*2
     do i = 2,n-2
        a(1,i) = b(1,1) + b(1,i)*2
        a(2,i) = b(2,1) + b(2,i)*2
        a(3,i) = b(3,1) + b(3,i)*2
        a(4,i) = b(4,1) + b(4,i)*2
        a(5,i) = b(5,1) + b(5,i)*2
        a(6,i) = b(6,1) + b(6,i)*2
        a(7,i) = b(7,1) + b(7,i)*2
        a(8,i) = b(8,1) + b(8,i)*2
        a(9,i) = b(9,1) + b(9,i)*2
        a(10,i) = b(10,1) + b(10,i)*2
     enddo
     do kk = 1,n-1
        if (a(3,kk) .eq. b(3,1) + b(3,kk)*2) then
           answer1 = 1
        else
           answer1 = 0
        endif
        if (a(5,kk) .eq. b(5,1) + b(5,kk)*2) then
           answer2 = 1
        else
           answer3 = 0
        endif
        if (a(6,kk) .eq. b(6,1) + b(6,kk)*2) then
           answer3 = 1
        else
           answer3 = 0
        endif
        if (a(7,kk) .eq. b(7,1) + b(7,kk)*2) then
           answer4 = 1
        else
           answer4 = 0
        endif
        if (a(10,kk) .eq. b(10,1) + b(10,kk)*2) then
           answer5 = 1
        else
           answer5 = 0
        endif
     enddo
  enddo
 if (answer1 .eq. 1) then
    write(6,*) "OK1"
 else
    write(6,*) "NG1"
 endif
 if (answer2 .eq. 1) then
    write(6,*) "OK2"
 else
    write(6,*) "NG2"
 endif
 if (answer3 .eq. 1) then
    write(6,*) "OK3"
 else
    write(6,*) "NG3"
 endif
 if (answer4 .eq. 1) then
    write(6,*) "OK4"
 else
    write(6,*) "NG4"
 endif
 if (answer5 .eq. 1) then
    write(6,*) "OK5"
 else
    write(6,*) "NG5"
 endif
end subroutine
