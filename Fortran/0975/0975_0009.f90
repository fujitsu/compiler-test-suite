call sub(100)
end

subroutine sub(n)
integer*4 n
integer*4 i
integer(kind=4), dimension(100) ::a=(/(i,i=1,100)/)

do i=1,n
   a(i) = 0
enddo

write(6,*) "a(80) = ",a(80)

end subroutine
