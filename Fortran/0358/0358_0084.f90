subroutine sub(a,b,c,n,m)
  real(8) a(n,n),b(m,m,m,m,m,m,m,m,m),c(m,m,m)

  do k=1,n
     do i=1,n
        a(k,i) = b(k+i,i+k,k+i,i+k,k+i,i,k,i,k)
     end do
  end do

end subroutine sub

write(6,*) "ok"
end program
