         integer,parameter :: nn = 5
         real(8),target,dimension(nn,nn,nn,nn-1) :: dq,k
         real(8),pointer,  dimension(:,:,:,:) :: dq_star,kkk
         real(8),dimension(nn,nn,nn,nn-1) :: res
         logical check

         interface
            subroutine calc(dq_star, nn, kkk)
              real(8),pointer,dimension(:,:,:,:) :: dq_star,kkk
              integer nn
            end subroutine calc
         endinterface

         dq_star=>dq
         kkk=>k

         dq = 0
         k = 2
         call calc(dq_star, nn, kkk)
         call master(res)
         if (check(dq,res).eqv. .true. ) then
            write(6,*) " ok "
         else
            write(6,*) " ng "
            write(6,*) dq
            write(6,*) res
         endif
         end

         subroutine calc(dq_star, n, kkk)
         real(8),          dimension(5,4) :: a
         real(8),pointer,  dimension(:,:,:,:) :: dq_star,kkk
         call xxx(a)
         do j=1,n
            do i=1,n
               dq_star(i,j,:,:) = a(:,:) * kkk(i,j,:,:)
            enddo
         enddo
         end subroutine calc

         subroutine xxx(a)
         real(8),          dimension(5,4) :: a
         do i=1,5
            do j=1,4
               a(i,j) = i+j
            enddo
         enddo
         return
         end

         subroutine master(res)
         real(8),dimension(5,5,5,4) :: res
         real(8),dimension(5,4) :: aa

         call xxx(aa)

         do j=1,5
            do i=1,5
               do jj=1,5
                  do ii=1,4
                     res(i,j,jj,ii) = aa(jj,ii) * 2
                  enddo
               enddo
            enddo
         enddo
         return
         end

         logical function check(dq,res)
         real(8),dimension(5,5,5,4) :: dq,res
         do j=1,5
            do i=1,5
               do jj=1,5
                  do ii=1,4
                     if (dq(i,j,jj,ii) .ne. res(i,j,jj,ii)) then
                        check = .false.
                        return
                     endif
                  enddo
               enddo
            enddo
         enddo
         check = .true.
         return
         end
