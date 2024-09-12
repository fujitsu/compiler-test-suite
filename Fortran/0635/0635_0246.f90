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
  answer6 = 0
  do k = 1,950
    do j = 1,10
      b(j,k) = k+j
    enddo
  enddo
  do ii = 1,10
     do l = 1,10,2
        do i = 1,n
           a(l,i) = b(l,i)*2
           a(l+1,i) = b(l+1,i)*2
        enddo
     enddo
     do kk = 1,n-1
        if (a(2,kk) .eq. b(2,kk)*2) then
           answer1 = 1
        else
           answer1 = 0
        endif
        if (a(3,kk) .eq. b(3,kk)*2) then
           answer2 = 1
        else
           answer2 = 0
        endif
        if (a(4,kk) .eq. b(4,kk)*2) then
           answer3 = 1
        else
           answer3 = 0
        endif
        if (a(5,kk) .eq. b(5,kk)*2) then
           answer4 = 1
        else
           answer4 = 0
        endif
        if (a(6,kk) .eq. b(6,kk)*2) then
           answer5 = 1
        else
           answer5 = 0
        endif
        if (a(7,kk) .eq. b(7,kk)*2) then
           answer6 = 1
        else
           answer6 = 0
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
 if (answer6 .eq. 1) then
    write(6,*) "OK6"
 else
    write(6,*) "NG6"
 endif
end subroutine
