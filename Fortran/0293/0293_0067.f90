program main
implicit none
integer::size1=10
integer::size2=10
call s1
write(*,*)"pass"
stop
contains

subroutine s1
implicit none
real(8)::array(size1, size2)
integer::l
do l=1,size2
  call s2(size1, array(:,l))
enddo
end subroutine

subroutine s2(isize, array)
implicit none
integer,intent(in)::isize
real(8),intent(out)::array(1:isize,1:*)
call s3(isize,array)
end subroutine

subroutine s3(isize, array)
implicit none
integer,intent(in)::isize
real(8),intent(out)::array(1:isize,1:1)
array(1:isize,1)=0.d0
end subroutine

end program

