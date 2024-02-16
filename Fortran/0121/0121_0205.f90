  real(kind=8) z/1/, a(8)/5,5,5,5,5,5,0,5/
  real(kind=8) x/1/, b(8)/3,0,0,3,3,3,3,3/
  real(kind=8) c(8),d(8)/8*2/,e(8)/8*3/
  real(kind=8) res(8)/2,8,11,14,17,20,23,26/
  idx = 1
  n = a(1)+b(1)

  do i=2,n
     c(i) = i

     if(a(i) .le. z) then
        z = a(i)
        idx = i
     endif

     if(b(i) .le. x) then
        x = b(i)
        idx = i
     endif
     d(i) = d(i) + c(i) * e(i)
  end do
  do i=1,8
     if (idx.ne.7 .or. d(i).ne.res(i)) then
        write(6,*) "ng",idx,d
        stop
     endif
  enddo
  write(6,*) "ok"
end
