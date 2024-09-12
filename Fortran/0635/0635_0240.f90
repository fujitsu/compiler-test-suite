  real(8),dimension(1:10,1:950) :: a
  real(8),dimension(1:10,1:950) :: b
  n = 950
  call  sub(a, b, n)
end

subroutine sub(a, b, n)
  integer answer1,answer2,answer3,answer4,answer5,&
          answer6,answer7,answer8,answer9,answer10
  integer answer11,answer21,answer31,answer41,answer51,&
          answer61,answer71,answer81,answer91,answer101
  integer answer12,answer22,answer32,answer42,answer52,&
          answer62,answer72,answer82,answer92,answer102
  real(8),dimension(1:10,1:950) :: a
  real(8),dimension(1:10,1:950) :: b

  answer1 = 0
  answer2 = 0
  answer3 = 0
  answer4 = 0
  answer5 = 0
  answer6 = 0
  answer7 = 0
  answer8 = 0
  answer9 = 0
  answer10 = 0
  answer11 = 0
  answer21 = 0
  answer31 = 0
  answer41 = 0
  answer51 = 0
  answer61 = 0
  answer71 = 0
  answer81 = 0
  answer91 = 0
  answer101 = 0
  answer12 = 0
  answer22 = 0
  answer32 = 0
  answer42 = 0
  answer52 = 0
  answer62 = 0
  answer72 = 0
  answer82 = 0
  answer92 = 0
  answer102 = 0
  do k = 1,950
    do j = 1,10
      b(j,k) = k+j
    enddo
  enddo
  do ii = 1,10
     do i = 1,n
        a(1,i) = b(1,i)*2
        a(2,i) = b(2,i)*2
        a(3,i) = b(3,i)*2
        a(4,i) = b(4,i)*2
        a(5,i) = b(5,i)*2
        a(6,i) = b(6,i)*2
        a(7,i) = b(7,i)*2
        a(8,i) = b(8,i)*2
        a(9,i) = b(9,i)*2
        a(10,i) = b(10,i)*2
     enddo
     if (a(1,1) .eq. b(1,1)*2) then
        answer11 = 1
     else
        answer11 = 0
     endif
     if (a(2,1) .eq. b(2,1)*2) then
        answer21 = 1
     else
        answer21 = 0
     endif
     if (a(3,1) .eq. b(3,1)*2) then
        answer31 = 1
     else
        answer31 = 0
     endif
     if (a(4,1) .eq. b(4,1)*2) then
        answer41 = 1
     else
        answer41 = 0
     endif
     if (a(5,1) .eq. b(5,1)*2) then
        answer51 = 1
     else
        answer51 = 0
     endif
     if (a(6,1) .eq. b(6,1)*2) then
        answer61 = 1
     else
        answer61 = 0
     endif
     if (a(7,1) .eq. b(7,1)*2) then
        answer71 = 1
     else
        answer71 = 0
     endif
     if (a(8,1) .eq. b(8,1)*2) then
        answer81 = 1
     else
        answer81 = 0
     endif
     if (a(9,1) .eq. b(9,1)*2) then
        answer91 = 1
     else
        answer91 = 0
     endif
     if (a(10,1) .eq. b(10,1)*2) then
        answer101 = 1
     else
        answer101 = 0
     endif

     if (a(1,n) .eq. b(1,n)*2) then
        answer12 = 1
     else
        answer12 = 0
     endif
     if (a(2,n) .eq. b(2,n)*2) then
        answer22 = 1
     else
        answer22 = 0
     endif
     if (a(3,n) .eq. b(3,n)*2) then
        answer32 = 1
     else
        answer32 = 0
     endif
     if (a(4,n) .eq. b(4,n)*2) then
        answer42 = 1
     else
        answer42 = 0
     endif
     if (a(5,n) .eq. b(5,n)*2) then
        answer52 = 1
     else
        answer52 = 0
     endif
     if (a(6,n) .eq. b(6,n)*2) then
        answer62 = 1
     else
        answer62 = 0
     endif
     if (a(7,n) .eq. b(7,n)*2) then
        answer72 = 1
     else
        answer72 = 0
     endif
     if (a(8,n) .eq. b(8,n)*2) then
        answer82 = 1
     else
        answer82 = 0
     endif
     if (a(9,n) .eq. b(9,n)*2) then
        answer92 = 1
     else
        answer92 = 0
     endif
     if (a(10,n) .eq. b(10,n)*2) then
        answer102 = 1
     else
        answer102 = 0
     endif
     do kk = 2,n-3
        if (a(1,kk) .eq. b(1,kk)*2) then
           answer1 = 1
        else
           answer1 = 0
        endif
        if (a(2,kk) .eq. b(2,kk)*2) then
           answer2 = 1
        else
           answer2 = 0
        endif
        if (a(3,kk) .eq. b(3,kk)*2) then
           answer3 = 1
        else
           answer3 = 0
        endif
        if (a(4,kk) .eq. b(4,kk)*2) then
           answer4 = 1
        else
           answer4 = 0
        endif
        if (a(5,kk) .eq. b(5,kk)*2) then
           answer5 = 1
        else
           answer5 = 0
        endif
        if (a(6,kk) .eq. b(6,kk)*2) then
           answer6 = 1
        else
           answer6 = 0
        endif
        if (a(7,kk) .eq. b(7,kk)*2) then
           answer7 = 1
        else
           answer7 = 0
        endif
        if (a(8,kk) .eq. b(8,kk)*2) then
           answer8 = 1
        else
           answer8 = 0
        endif
        if (a(9,kk) .eq. b(9,kk)*2) then
           answer9 = 1
        else
           answer9 = 0
        endif
        if (a(10,kk) .eq. b(10,kk)*2) then
           answer10 = 1
        else
           answer10 = 0
        endif
     enddo
  enddo
 if (answer1.eq.1 .and. answer11.eq.1 .and. answer12.eq.1) then
    write(6,*) "OK1"
 else
    write(6,*) "NG1"
 endif
 if (answer2.eq.1 .and. answer21.eq.1 .and. answer22.eq.1) then
    write(6,*) "OK2"
 else
    write(6,*) "NG2"
 endif
 if (answer3.eq.1 .and. answer31.eq.1 .and. answer32.eq.1) then
    write(6,*) "OK3"
 else
    write(6,*) "NG3"
 endif
 if (answer4.eq.1 .and. answer41.eq.1 .and. answer42.eq.1) then
    write(6,*) "OK4"
 else
    write(6,*) "NG4"
 endif
 if (answer5.eq.1 .and. answer51.eq.1 .and. answer52.eq.1) then
    write(6,*) "OK5"
 else
    write(6,*) "NG5"
 endif
 if (answer6.eq.1 .and. answer61.eq.1 .and. answer62.eq.1) then
    write(6,*) "OK6"
 else
    write(6,*) "NG6"
 endif
 if (answer7.eq.1 .and. answer71.eq.1 .and. answer72.eq.1) then
    write(6,*) "OK7"
 else
    write(6,*) "NG7"
 endif
 if (answer8.eq.1 .and. answer81.eq.1 .and. answer82.eq.1) then
    write(6,*) "OK8"
 else
    write(6,*) "NG8"
 endif
 if (answer9.eq.1 .and. answer91.eq.1 .and. answer92.eq.1) then
    write(6,*) "OK9"
 else
    write(6,*) "NG9"
 endif
 if (answer10.eq.1 .and. answer101.eq.1 .and. answer102.eq.1) then
    write(6,*) "OK10"
 else
    write(6,*) "NG10"
 endif
end subroutine
