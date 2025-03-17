   program main
        integer::imax=3,jmax=4,kmax=5
        real*8,allocatable::arrA(:,:,:)

        allocate( arrA(imax,jmax,kmax) )
        arrA = 1
        arrA(1,1,1) = 2

        call stackTest_init( arrA(:,:,1), imax,jmax,kmax )
        call stackTest_calc( arrA(:,:,1), imax,jmax,kmax )
        write(1,*)SUM( arrA(:,:,:) )
        print *,'pass'
    end

    subroutine stackTest_init( arrA, imax,jmax,kmax )
        real*8 arrA(imax,jmax,kmax)
        Real*8 arrB(imax,jmax,kmax)

        do k=1,kmax
        do j=1,jmax
        do i=1,imax
            arrA(i,j,k) = i + j + k
        end do
        end do
        end do

        arrB = arrA
        write(1,*)"stackTest_init:",MAXVAL( arrB )

        return
    end subroutine

    subroutine stackTest_calc( arrA, imax,jmax,kmax )
        real*8 arrA(imax,jmax,kmax)
        real*8 arrB(kmax,jmax,imax)

        do n=1,imax*jmax*kmax
            arrB(n,1,1) = arrA(n,1,1)
        end do

        do k=1,kmax
        do j=1,jmax
        do i=1,imax
            arrA(i,j,k) = arrB(k,j,i)
        end do
        end do
        end do

        return
    end subroutine

