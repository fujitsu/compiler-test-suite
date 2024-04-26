  subroutine g(xy,n)
  real,intent(out) :: xy
  xy  = 0
  do i=1,n
    xy  = xy + 1     
  enddo
  call gsum(xy )
  xy  = xy +3
  if (abs(xy-10)>0.00001)print *,101
contains
subroutine gsum(x)
x=x+2
end subroutine
  end

xy=1
call g(xy,5)
print *,'pass'
end



