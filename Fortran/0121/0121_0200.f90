  real(kind=8) z/1/, a(8)/5,5,5,5,5,5,0,5/
  real(kind=8) x/1/, b(8)/3,0,0,3,3,3,3,3/

  idx = 1

  do i=1,8

     if(a(i) .le. z) then
        z = a(i)
        idx = i
     endif
  end do
  if (idx.eq.7) then
     write(6,*) "ok"
  else
     write(6,*) "ng",idx
  endif

end
