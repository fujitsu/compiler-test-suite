subroutine sub1
  common /comdata/A(10),B(10),C(10),R1(10),R2(10),R3(10)
  integer(4) :: i,j,L
   

  do i = 1, 10
    do j = 1,10
      do L = 1,10
          A(i) = i+j
          B(j) = i+j*2
          C(L) = i
          R1(i) = A(i)+1
          R2(j) = B(j)+2
          R3(L) = C(L)+3
      enddo
    enddo
  enddo
end

  common /comdata/A(10),B(10),C(10),R1(10),R2(10),R3(10)
  do i = 1,10
    j = 2
    A(i) = i+j
    B(i) = i+j*2
    C(i) = i
    R1(i) = A(i)+1
    R2(i) = B(i)+2
    R3(i) = C(i)+3
  enddo
  write(6,*) R1(10)
  write(6,*) R2(10)
  write(6,*) R3(10)
  call sub1
  write(6,*) R1(10)
  write(6,*) R2(10)
  write(6,*) R3(10)
end
