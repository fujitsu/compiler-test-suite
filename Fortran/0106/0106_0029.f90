subroutine sub
  real(8),dimension(10,10)::a,b,c
  a=1.0
  b=2.0
  c=matmul(a,b)
  do i = 1,10
    do j = 1,10
      if (c(j,i) ==  20.0) then
      else
        write(6,*),"NG"
      endif
    enddo
  enddo
  write(6,*),"OK"
end

call sub
end
