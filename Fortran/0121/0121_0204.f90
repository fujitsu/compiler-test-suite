  real(kind=8) z/1/, a(8)/5,5,5,5,5,5,0,5/
  real(kind=8) x/1/, b(8)/3,0,0,3,3,3,3,3/
  real(kind=8) res(8)/4,1,1,4,4,4,10,3/
  idx = 1
  n = a(1)+b(1)

  do i=1,n-1

     if(a(i) .le. z) then
        z = a(i)
        idx = i
     endif

     b(i) = b(i) + idx
  end do

  do i=1,8
     if (idx.ne.7 .or. b(i).ne.res(i)) then
        write(6,*) "ng",idx,b
        stop
     endif
  enddo
  write(6,*) "ok"

end
