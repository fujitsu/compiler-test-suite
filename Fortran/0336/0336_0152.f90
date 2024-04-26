program main
real(kind=4) f

f = 0._4
do i=16777217_4, 16777222_4
  f = f + real(i,kind=4)
enddo


if ((int(f,kind=4) .ge. 100663312) .and. (int(f,kind=4) .le. 100663320)) then
  print *,"ok"
else
  print *,"ng",f
endif
end program
