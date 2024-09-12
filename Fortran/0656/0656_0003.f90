call sub01(10)
print *,'pass'
end
recursive subroutine sub01(i)
interface
recursive subroutine sub02(i)
end subroutine
end interface
integer i
do j=1,10
 if (i>j) call sub02(10)
end do
end
recursive subroutine sub02(i)
integer i
do j=1,10
 if (i>j) call sub01(1)
end do
end
