integer a1(2,2,2),a2(2,2,2)
data a1/8*8/,a2/8*8/
do i=1,2
do j=1,2
do k=1,2
a1(i,j,k) = k
a2(i,j,k) = k
enddo
enddo
enddo
do i=1,2
do j=1,2
do k=1,2
a1(i,j,k) = k
a2(i,j,k) = k
enddo
enddo
enddo
do i=1,2
do j=1,2
do k=1,2
if (a1(i,j,k).ne.a2(i,j,k)) then
print *,i,j,k
print *,a1(i,j,k)
print *,a2(i,j,k)
endif
enddo
enddo
enddo
999 continue
print *,'pass'
end
