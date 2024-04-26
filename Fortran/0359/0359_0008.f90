  complex*16 c16c(20),c16b(20)/20*(2.,3.)/,c16a(10),c16d(10)
  data c16c/20*(1.,-1.)/
  complex*8 c8c(20),c8b(20)/20*(2.,3.)/,c8a(10),c8d(10)
  data c8c/20*(1.,-1.)/

  write(*,*) " TEST start "
  do i = 1, 10
    c8a(i) =  2 + real(c8b(i) + c8c(i))
    c8d(i) = c8c(i) + (2.,3.)	
  end do


  do i=1,10
     if (c8a(i) .ne. (5.,0.)) then
        write(*,*) "NG1 --> ", c8a(i)
     endif
  enddo
  write(6,*) c8d

  do i = 1, 10
    c8a(i) =  2 +  imag(c8b(i) + c8c(i))
    c8d(i) = c8c(i) + (2.,3.)	
  end do


  do i=1,10
     if (c8a(i) .ne. (4.,0.)) then
        write(*,*) "NG2 --> ", c8a(i)
     endif
  enddo
  write(6,*) c8d

  do i = 1, 10
    c16a(i) =  2 + real(c16b(i) + c16c(i))
    c16d(i) = c16c(i) + (2.,3.)	
  end do


  do i=1,10
     if (c16a(i) .ne. (5.,0.)) then
        write(*,*) "NG3 --> ", c16a(i)
     endif
  enddo
  write(6,*) c16d

  do i = 1, 10
    c16a(i) =  2 +  imag(c16b(i) + c16c(i))
    c16d(i) = c16c(i) + (2.,3.)	
  end do


  do i=1,10
     if (c16a(i) .ne. (4.,0.)) then
        write(*,*) "NG4 --> ", c16a(i)
     endif
  enddo
  write(6,*) c16d
  write(*,*) " TEST end "
  end
