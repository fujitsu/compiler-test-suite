  complex*16 c16c(20),c16b(20)/20*(2.,3.)/,c16a(10)
  data c16c/20*(1.,-1.)/
  complex*8 c8c(20),c8b(20)/20*(2.,3.)/,c8a(10)
  data c8c/20*(1.,-1.)/

  write(*,*) " TEST start "
  do i = 1, 10
    c8a(i) =  2 + real(c8b(i) + c8c(i))
  end do


  do i=1,10
     if (c8a(i) .ne. (5.,0.)) then
        write(*,*) "NG1 --> ", c8a(i)
     endif
  enddo

  do i = 1, 10
    c8a(i) =  2 +  imag(c8b(i) + c8c(i))
  end do


  do i=1,10
     if (c8a(i) .ne. (4.,0.)) then
        write(*,*) "NG2 --> ", c8a(i)
     endif
  enddo

  do i = 1, 10
    c16a(i) =  2 + real(c16b(i) + c16c(i))
  end do


  do i=1,10
     if (c16a(i) .ne. (5.,0.)) then
        write(*,*) "NG3 --> ", c16a(i)
     endif
  enddo

  do i = 1, 10
    c16a(i) =  2 +  imag(c16b(i) + c16c(i))
  end do


  do i=1,10
     if (c16a(i) .ne. (4.,0.)) then
        write(*,*) "NG4 --> ", c16a(i)
     endif
  enddo
  write(*,*) " TEST end "
  end
