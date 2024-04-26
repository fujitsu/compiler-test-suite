real(kind=8),dimension(1) :: d,b
complex(kind=8),dimension(1)      :: e,f

b = (/(sqrt(float(i)),i=1,1)/)
f = 1

do i=1,1
   if ( 1 .eq. f(i) ) then
      e(i) = 2
   endif
end do
write(6,*) "ok"
end
