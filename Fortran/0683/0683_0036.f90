subroutine test(src1,src2,dest)
  integer(kind=4), dimension(1:64) :: src1,src2,dest
  do i=1,64
     dest(i) = ISHFT(src1(i),src2(i))
  enddo
end subroutine test


  integer(kind=4), dimension(1:64) :: src1,src2,dest
  do i=1,64
    src1(i) = 1
    src2(i) = i-32
  end do
  call test(src1, src2, dest)

  if (dest(1) .ne. 0) then
    stop 1
  endif
  if (dest(32) .ne. 1) then
    print *, dest(32)
    stop 1
  endif
  if (dest(33) .ne. 2) then
    print *, dest(33)
    stop 1
  endif
  print *, 'PASS'
end
