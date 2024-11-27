     integer, parameter :: y(0:3,1:2) = reshape( (/ 1,2,3,4,5,6,7,8 /), &
                                           (/ 4,2 /), order = (/ 2,1 /) )
  integer :: yy(0:3,1:2)

write(1,*)y,shape(y),lbound(y),ubound(y)
call yx(0,1,2,3,4,yy)
call sub
print *,'pass'
contains
subroutine sub
integer a(14)
rewind 1
read(1,*) a
if (any(a/=(/1,3,5,7,2,4,6,8,4,2,0,1,3,2/)))write(6,*) "NG"
read(1,*) a
if (any(a/=(/1,3,5,7,2,4,6,8,4,2,0,1,3,2/)))write(6,*) "NG"
end subroutine
subroutine yx(i0,i1,i2,i3,i4,yy)
  integer :: yy(i0:,:) 
yy(:,:) = reshape( (/ 1,2,i3,4,5,6,7,8 /), &
                    (/ i4,i2 /), order = (/ i2,i1 /) )
write(1,*)yy,shape(yy),lbound(yy),ubound(yy)

end subroutine
end
