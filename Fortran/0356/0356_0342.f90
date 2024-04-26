subroutine aaa(b, c)
  type st1
     complex*8 :: a(10)
  end type st1
  type(st1) :: str

  complex*8 b(10),c(10)
  real dummy_ary(10)
  integer list(10)/10,9,8,7,6,5,4,3,2,1/

  do i=1,10
     str%a(i) = cmplx(i,i*3)
  enddo

  do i=1,8
     dummy_ary = 0
     b(i) =conjg(str%a(list(i)))
  enddo
  return
end subroutine aaa

  complex*8 b(10),c(10),res(10)
  do i=1,10
     b(i) = 0
     c(i) = cmplx(i,i*3)
     res(11-i) = cmplx(i, -i*3)
  enddo
  res(9) = 0
  res(10) = 0
  call aaa(b, c)
  do i=1,10
     if (b(i) .ne. res(i)) then
        write(6,*) res
        write(6,*) b
        stop
     endif
  enddo
  write(6,*) "ok"
end
