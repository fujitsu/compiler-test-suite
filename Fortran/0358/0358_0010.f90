program main
  real*16 xx
  xx = ANINT(5.783742356923771e10_16)
  if (xx .eq. 57837423569.0_16) then
     write(6,*) "ok"
  else
     write(6,*) "ng", xx
  endif
end program main
