program main
integer c(10,10)
do j=1,10
   do i=1,10
      c(i,j)=i*j;
   enddo
enddo
print *,c
end
