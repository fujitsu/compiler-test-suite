        subroutine sub(a,n)
        real a(10,*)
        call sub1(a(1,N))
        call sub1(a(1,N))
        end
        subroutine sub1(a)
        reAL A(10,*)
        do i=5,6
        call sub3(a(i,1))
        call sub3(a(i+1,1))
        end do
        do i=6,7
        call sub4(a(i,1))
        end do
        end
        subroutine sub3(a)
        reAL A(10,*)
        do i=1,2
        call sub4(a(i,1))
        end do
        do i=7,8
        call sub4(a(i,2))
        end do
        end
        subroutine sub4(a)
        reAL A(10,*)
        do j=1,1
        do i=3,4
        call sub5(a(i+3,j),a(i,j))
        end do
        end do
        end
        subroutine sub5(a,b)
        real a(*),b(*)
        do i=1,2
        a(i) = b(i) + 2
        end do
        end
        common/com/aa
        real aa(10,10)
        aa = 1
        call sub(aa,1)
        call sub(aa,4)

        write(6,1) aa
 1      format(10f6.2)
        end
