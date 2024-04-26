subroutine sub(n,m,mm,mmm)
 implicit real(kind(1d0)) (a-h, o-z)
 complex(kind(1d0)) psi(n),rpsi(m*mm*mmm),offt(m*mm*mmm)
 psi=cmplx(1.,1.)
 if (real(psi(5)) .ne. 1) then
    print *,"ng1"
 endif
 rpsi(1:n)=psi(1:n)
 offt=cmplx(0.d0,0.d0,kind(1d0))
 if (real(offt(5)) .ne. 0) then
    print *,"ng2"
 endif
 if (real(rpsi(5)) .ne. 1) then
    print *,"ng3"
 endif
 print *,"ok"
end subroutine

program main
call sub(10,1,2,5)
end program
