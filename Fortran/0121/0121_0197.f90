  real(kind=8) a(10)/1,2,3,4,5,6,7,8,9,10/
  real(kind=8) x,b(10)/10*2/
  x = 10
  n = a(2)

  do j=1,n
     do i=1,2
        x = a(i) + b(j)
        a(i) = x
     enddo
     x = a(1)-b(j)
     a(1) = x
  enddo
  if (x.eq.1 .and. a(1).eq.1 .and. a(2).eq.6) then
     write(6,*) "ok"
  else
     write(6,*) "ng",x,a(1),a(2)
  endif
end program
