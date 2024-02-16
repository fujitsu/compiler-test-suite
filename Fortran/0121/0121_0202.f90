  integer(kind=8) z/1/, a(8)/5,5,5,5,5,5,0,5/
  integer(kind=8) x/2/, b(8)/3,1,1,3,3,3,3,3/

  idx = 1

  do i=1,8

     if(a(i) .le. z) then
        z = a(i)
        idx = i
        write(1,*) idx
     endif

     if(b(i) .le. x) then
        x = b(i)
     endif
  end do
  if (x.eq.1 .and. z.eq.0) then
     write(6,*) "ok"
  else
     write(6,*) x,z
  endif


end
