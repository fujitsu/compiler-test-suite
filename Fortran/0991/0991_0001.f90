        PROGRAM main
        INTEGER, PARAMETER :: N=4,M=8,P=2
        COMPLEX, DIMENSION(N,M,P) :: zzzz
        COMPLEX, DIMENSION(M,P,N) :: dat2
        INTEGER :: i,j,k
        iw=1
                        do k=1,size(zzzz,3)
                 do j=1,size(zzzz,2)
        do i=1,size(zzzz,1)
                                zzzz(i,j,k)=cmplx(iw,iw)
                                iw=iw+1
                        end do
                end do
        end do
        dat2=reshape(zzzz,shape=(/M,P,N/),order=(/3,1,2/))
                        do k=1,size(dat2,3)
                do j=1,size(dat2,2)
        do i=1,size(dat2,1)
                                print *,i,j,k,dat2(i,j,k),ichk()
                        end do
                end do
        end do
         contains
           function ichk()
           integer ichk(3)
           do kk=1,size(zzzz,3)
           do jj=1,size(zzzz,2)
           do ii=1,size(zzzz,1)
              if (dat2(i,j,k)==zzzz(ii,jj,kk))then
                ichk=(/ii,jj,kk/)
                return 
              end if
           end do
           end do
           end do
           ichk=-9999
          end function
        END PROGRAM main
