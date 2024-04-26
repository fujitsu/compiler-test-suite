  complex*16 feng0(8)
    feng0(:) = (1., -10.)
  do mx = 1, 8
     feng0(mx) = conjg( feng0(mx))
  end do
  do i=1,8
     if (feng0(i) .ne. cmplx(1,10)) then
        write(*,*) "ng", feng0
        stop
     endif
  enddo
  write(*,*) "ok"
end
