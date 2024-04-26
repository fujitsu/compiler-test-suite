  complex*8 a(16),b(16),c(16)
  data a/16*0/
  data b/16*(1,1)/

  do i=1,16
     c(i) = cmplx(i,0)
  enddo
  call sub(a,b,c)
  do i=1,16
     if (real(a(i)).ne.1.0 .or. imag(a(i)).ne.1.0) then
       write(6,*) "ng"
       write(6,*) a
       stop
     endif
  enddo
  write(6,*) "ok"
contains
  subroutine sub(a,b,c)
    complex*8,dimension(16)::a,b,c
    do i=1,16
       a(i) = b(i)
       b(i) = c(i)
    enddo
  end subroutine sub
end
