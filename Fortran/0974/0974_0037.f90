call sub(100)
end

subroutine sub(n)
integer*4 n
integer*4 i
integer(kind=4), dimension(100) ::a
integer(kind=4), dimension(100) ::b=(/(i,i=1,100)/)

do i=1,n
   a(i) = b(i)
enddo

write(6,*) "a(99) = ",a(99)
write(6,*) "b(99) = ",b(99)

end subroutine
