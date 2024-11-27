integer(kind=8), dimension(100) ::a=(/(i,i=1,100)/)

call sub(a)
write(6,*) "a(100) = ",a(100)
end

subroutine sub(a)
integer(kind=8), dimension(100) ::a
integer*4 i

do i=1,100
   a(i) = 0
enddo

end subroutine
