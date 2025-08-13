    program main
        integer::imax=3,jmax=4,kmax=5
        real*8,allocatable::arrA(:,:,:)

        allocate( arrA(imax,jmax,kmax) )
        arrA = 1
        arrA(1,1,1) = 2

        call stackTest_init( arrA(:,:,1), imax,jmax,1 )
        print *,'pass'
    end

    subroutine stackTest_init( arrA, imax,jmax,kmax )
        real*8 arrA(imax,jmax,kmax)
        Real*8 arrB(imax,jmax,kmax)

        k=1
        do j=1,jmax
        do i=1,imax
            arrA(i,j,k) = i + j + k
        end do
        end do

        arrB = arrA
        write(66,*)"stackTest_init:",MAXVAL( arrB )

        return
    end subroutine
