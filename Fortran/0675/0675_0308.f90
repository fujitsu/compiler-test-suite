real(kind=8), dimension(100) ::A=(/(i,i=1,100)/)
real(kind=8), dimension(100) ::B
external sin
do i=1,100
  B(i) = sin(A(i))
end do

write(*,*) "B=",B

end

function sin(i)
real*8 i
sin=i*i
end function sin
