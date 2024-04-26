subroutine aaa(b, c, n)
  type st1
     complex*16 :: a(10)
  end type st1
  type(st1) :: str

  complex*16 b(10),c(10)
  real dummy_ary(10)

  do i=1,10
     str%a(i) = cmplx(i,i*3)
  enddo

  do i=1,n,2
     dummy_ary = 0
     b(i) =conjg(str%a(i))
  enddo
  return
end subroutine aaa

  complex*16 b(10),c(10),res(10)
  do i=1,10
     b(i) = 0
     c(i) = cmplx(i,i*3)
     res(i) = cmplx(i, -i*3)
  enddo
  do i=2,10,2
     res(i) = 0
  enddo
  res(9) = 0
  res(10) = 0
  call aaa(b, c, 8)
  do i=1,10
     if (b(i) .ne. res(i)) then
        write(6,*) res
        write(6,*) b
        stop
     endif
  enddo
  write(6,*) "ok"
end
