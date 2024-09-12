call test01()
print *,"pass"
end
subroutine test01()
integer arr(10)
i=1
j=2
arr(1:3) = (/integer :: i,(/j/),1/)
if (all(arr(1:3).eq.(/1,2,1/)) .neqv. .true.) call errtra
arr(1:10) = (/integer :: i,j,1_2,1,1,1,1,1,1,1/)
arr(1:10) = (/integer :: i,(j+0_8,j=1,1),1.0,(i,i=1,7)/)
arr(1:10) = (/integer :: i,(/j/),1.0_8,(i,i=1,7)/)
if (all(arr(1:3).eq.(/1,2,1/)) .neqv. .true.) call errtra
end
subroutine errtra
print *,"err"
end subroutine
