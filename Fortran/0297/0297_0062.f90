parameter(n=10)
integer a(n)
do i=1,n
   a(i) =i
enddo

call sub(a,n)
print *,a(10)
stop
end

subroutine sub(a,n)
  integer a(n)
  do i=1,n
     a(i) = a(i)+ i
  enddo
  return
end subroutine sub
