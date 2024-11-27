integer(kind=8), dimension(100) ::a
integer(kind=8), dimension(100) ::b=(/(i,i=1,100)/)

call sub(a,b)
write(6,*) "a = ",a
write(6,*) "b = ",b
end

subroutine sub(a,b)
integer(kind=8), dimension(100) ::a
integer(kind=8), dimension(100) ::b
integer*4 i

do i=1,100
   a(i) = b(i)
enddo

end subroutine
