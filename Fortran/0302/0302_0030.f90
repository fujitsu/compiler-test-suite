real*8 q1q,exc
exc = 0
q1q = 2.0
call sub(exc,10)
write(6,*) exc
end


subroutine sub(exc,iend_fftph)
  real*8  q1q,q2q,fz,exc1,exc
  exc1=0
  do is = 1,10
  do i = 1,iend_fftph
     if(.true. ) then
        if(i < 3) then
           fz= 4
        else
           fz = 10
        end if
        q1q = fz/2
        q2q = log(1/q1q)

        if(is ==  2) then
           if(i > 1.0) then
              fz = fz + 1
           endif
        endif
        exc1 = q2q * fz
     endif
  end do

  exc = exc + exc1
  enddo

end subroutine sub
