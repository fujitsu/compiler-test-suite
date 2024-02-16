#define SVU_N1 20
#define SVU_N2 2
#define SVU_N3 2

#define N1 SVU_N1
#define N2 SVU_N2
#define N3 SVU_N3

#define TYPE real(kind=4)


program main
  TYPE, dimension(N1,N2,N3) :: a,b,c,res
  
  call init(a,b,c,res,N1,N2,N3)
  call test1(a,b,c,N1,N2,N3)
  call check(a,res,N1,N2,N3)
end program main

subroutine init(a,b,c,res,n1,n2,n3)
  TYPE, dimension(n1,n2,n3) :: a,b,c,res

  do i=1,n3
     do j=1,n2
        do k=1,n1
           a(k,j,i) = 0
           b(k,j,i) = sin(real(i+j+k))
           c(k,j,i) = cos(real(i+j-k))
           res(k,j,i) = b(k,j,i) * c(k,j,i)
        enddo
     enddo
  enddo

end subroutine init

subroutine check(a,res,n1,n2,n3)
  TYPE, dimension(n1,n2,n3) :: a,res

  do i=1,n3
     do j=1,n2
        do k=1,n1
           if (a(k,j,i) .ne. res(k,j,i)) then
              print *, "NG"
           endif
        enddo
     enddo
  enddo
  print *,"OK"
end subroutine check



subroutine test1(a,b,c,n1,n2,n3)
  TYPE, dimension(n1,n2,n3) :: a,b,c

  do i=1,SVU_N3
     do j=1,SVU_N2
        do k=1,SVU_N1
           a(k,j,i) = b(k,j,i) * c(k,j,i)
        enddo
     enddo
  enddo
end subroutine test1

