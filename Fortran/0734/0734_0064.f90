  integer i,j,a(20)
  j=1
  do i=1,10
    a(j+10)=j
    j=1-j
  enddo
  do i=1,20
    if( i.eq.11 .and. a(i).ne.1 ) then
        print *,"ng"
        stop
    endif
  enddo
  print *,"pass"
end
