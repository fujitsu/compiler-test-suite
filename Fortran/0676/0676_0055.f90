subroutine sub(c)
complex c
c = csqrt(c+c)
if ((int(real(c)*100000.,kind=4) .eq. 165163) .and. (int(imag(c)*100000.,kind=4) .eq. 72655)) then
  print *,"ok"
else
  print *,c
  print *,"ng"
endif
end

program main
complex c
c = (1.1,1.2)
call sub(c)
end program
