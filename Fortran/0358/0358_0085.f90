subroutine sub(a,b,c,n)
  real(8) a(n,n),b(n,n),c(n,n)
  do k=1,n
     do j=1,n
        do i=1,n
           a(i,j) = a(i,j) + b(i,k) * c(k,j)
        end do
     end do
  end do
end subroutine sub

write(6,*) "ok"
end program
