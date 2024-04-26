program main
  real :: a1,a2,a3
  real,dimension(100,100) :: b,c,d,not_artclt1,not_artclt2
  integer :: i,j,k
  integer :: cond,cond2
  a1=2
  a2=3
  a3=4
  not_artclt1 = 2.0
  not_artclt2 = 5.0
  k=10
  kk=20

  cond = 1
  do j = 1,100
     do i = 1,100
10      continue
        cond = cond +1

        if ( k .eq. 10) then
           not_artclt1(i,j) = not_artclt1(i,j) +k
           not_artclt1(i,j) = not_artclt1(i,j) -7
        end if

        if (cond .lt. 3) goto 10
        b(i,j) = a1
        b(i,j) = b(i,j)/2
        b(i,j) = b(i,j) +7
        b(i,j) = b(i,j) *3
        b(i,j) = b(i,j) -1
        b(i,j) = b(i,j) *2
        b(i,j) = b(i,j)/2
     end do
  end do
  print *,"#01",sum(b),sum(not_artclt1)

  cond =10
  do j = 1,100
     do i = 1,100
        b(i,j) = a1
        b(i,j) = b(i,j)/2
        b(i,j) = b(i,j) +7
        b(i,j) = b(i,j) *3
        b(i,j) = b(i,j) -1
        b(i,j) = b(i,j) *2
        b(i,j) = b(i,j)/2

        if ( kk .eq. 10) then
20         continue
           cond = cond -1
           not_artclt1(i,j) = not_artclt1(i,j) +k
           not_artclt1(i,j) = not_artclt1(i,j) -7
           if (cond .gt. 0) goto 20
        end if

        c(i,j) = a2
        c(i,j) = c(i,j)/2
        c(i,j) = c(i,j) +7
        c(i,j) = c(i,j) *3
        c(i,j) = c(i,j) -1
        c(i,j) = c(i,j) *2
        c(i,j) = c(i,j)/2
     end do
  end do
  print *,"#02",sum(b),sum(c),sum(not_artclt1)

  cond =0
  do j = 1,100
     do i = 1,100
30      continue
        cond = cond +1
        b(i,j) = a1
        b(i,j) = b(i,j)/2
        b(i,j) = b(i,j) +7
        b(i,j) = b(i,j) *3
        b(i,j) = b(i,j) -1
        b(i,j) = b(i,j) *2
        b(i,j) = b(i,j)/2
        if (cond .lt. 5) then
           goto 30
        end if

        if ( k .eq. 10) then
           not_artclt1(i,j) = not_artclt1(i,j) +k
           not_artclt1(i,j) = not_artclt1(i,j) -7
        end if

     end do
  end do
  print *,"#03",sum(b),sum(not_artclt1)

  cond = 20
  do j = 1,100
     do i = 1,100

        if ( k .eq. 10) then
           not_artclt2(i,j) = not_artclt2(i,j) +k
           not_artclt2(i,j) = not_artclt2(i,j) -7
        end if

40      continue
        cond = cond -2
        b(i,j) = a1
        b(i,j) = b(i,j)/2
        b(i,j) = b(i,j) +7
        b(i,j) = b(i,j) *3
        b(i,j) = b(i,j) -1
        b(i,j) = b(i,j) *2
        b(i,j) = b(i,j)/2
        if(cond .gt. 10 ) goto 40

        if ( kk .eq. 10) then
           not_artclt1(i,j) = not_artclt1(i,j) +k
           not_artclt1(i,j) = not_artclt1(i,j) -7
        end if

     end do
  end do
  print *,"#04",sum(b),sum(not_artclt1),sum(not_artclt2)

  cond = 0
  cond2 = 1
  do j = 1,100
     do i = 1,100
501     continue
        cond = cond +1
        c(i,j) = a2
        c(i,j) = c(i,j)/2
        c(i,j) = c(i,j) +7
        c(i,j) = c(i,j) *3
        c(i,j) = c(i,j) -1
        c(i,j) = c(i,j) *2
        c(i,j) = c(i,j)/2
        if (cond .le. 5) goto 501

        if ( kk .eq. 10) then
           not_artclt2(i,j) = not_artclt2(i,j) +k
           not_artclt2(i,j) = not_artclt2(i,j) -7
        end if

502     continue
        cond2 = cond2 +1
        b(i,j) = a1
        b(i,j) = b(i,j)/2
        b(i,j) = b(i,j) +7
        b(i,j) = b(i,j) *3
        b(i,j) = b(i,j) -1
        b(i,j) = b(i,j) *2
        b(i,j) = b(i,j)/2
        if (cond2 .le. 5) goto 502

        if ( k .eq. 10) then
           not_artclt1(i,j) = not_artclt1(i,j) +k
           not_artclt1(i,j) = not_artclt1(i,j) -7
        end if

     end do
  end do
  print *,"#05",sum(b),sum(c),sum(not_artclt1),sum(not_artclt2)

  cond = 1
  cond2 = 1
  do j = 1,100
     do i = 1,100
601     continue

        if ( k .eq. 10) then
           not_artclt2(i,j) = not_artclt2(i,j) +k
           not_artclt2(i,j) = not_artclt2(i,j) -7
        end if

        cond = cond+1
        if (cond .eq. 2) goto 601
        b(i,j) = a1
        b(i,j) = b(i,j)/2
        b(i,j) = b(i,j) +7
        b(i,j) = b(i,j) *3
        b(i,j) = b(i,j) -1
        b(i,j) = b(i,j) *2
        b(i,j) = b(i,j)/2

        if ( kk .eq. 10) then
           not_artclt1(i,j) = not_artclt1(i,j) +k
           not_artclt1(i,j) = not_artclt1(i,j) -7
        end if


        if (cond2 .eq. 1) goto 602
        c(i,j) = a2
        c(i,j) = c(i,j)/2
        c(i,j) = c(i,j) +7
        c(i,j) = c(i,j) *3
        c(i,j) = c(i,j) -1
        c(i,j) = c(i,j) *2
        c(i,j) = c(i,j)/2
602     continue
     end do
  end do
  print *,"#06",sum(b),sum(c),sum(not_artclt1),sum(not_artclt2)

  cond = 1
  do j = 1,100
701  continue
     do i = 1,100
        d(i,j) = a3
        d(i,j) = d(i,j)/2
        d(i,j) = d(i,j) +7
        d(i,j) = d(i,j) *3
        d(i,j) = d(i,j) -1
        d(i,j) = d(i,j) *2
        d(i,j) = d(i,j)/2

        if ( kk .eq. 20) then
           not_artclt2(i,j) = not_artclt2(i,j) +k
           not_artclt2(i,j) = not_artclt2(i,j) -7
        end if

        b(i,j) = a1
        b(i,j) = b(i,j)/2
        b(i,j) = b(i,j) +7
        b(i,j) = b(i,j) *3
        b(i,j) = b(i,j) -1
        b(i,j) = b(i,j) *2
        b(i,j) = b(i,j)/2

        if ( k .eq. 10) then
           not_artclt1(i,j) = not_artclt1(i,j) +k
           not_artclt1(i,j) = not_artclt1(i,j) -7
        end if

        c(i,j) = a2
        c(i,j) = c(i,j)/2
        c(i,j) = c(i,j) +7
        c(i,j) = c(i,j) *3
        c(i,j) = c(i,j) -1
        c(i,j) = c(i,j) *2
        c(i,j) = c(i,j)/2
     end do
     if (cond .eq. 0) goto 701
  end do

  print *,"#07",sum(b),sum(c),sum(d),sum(not_artclt1),sum(not_artclt2)
end program main
