         integer,parameter :: nn = 5
         real(8),target,dimension(nn,nn,nn) :: dq,k
         real(8),pointer,  dimension(:,:,:) :: dq_star,kkk
         real(8),dimension(nn,nn,nn) :: res
         logical check
         interface
            subroutine calc(dq_star, nn, kkk)
              real(8),pointer,dimension(:,:,:) :: dq_star,kkk
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
         real(8),          dimension(2,5) :: a
         real(8),pointer,  dimension(:,:,:) :: dq_star,kkk
         call xxx(a)
         do j=1,n
            do i=1,n
               dq_star(i,j,:) = a(2,1:5) * kkk(i,j,:)
            enddo
         enddo
         end subroutine calc

         subroutine xxx(a)
         real(8),          dimension(2,5) :: a
         a = reshape((/(i,i=1,10)/),(/2,5/))
         return
         end

         subroutine master(res)
         real(8),dimension(5,5,5) :: res
         real(8),dimension(2,5) :: aa

         call xxx(aa)

         do j=1,5
            do i=1,5
               do jj=1,5
                  res(i,j,jj) = aa(2,jj) * 2
               enddo
            enddo
         enddo
         return
         end

         logical function check(dq,res)
         real(8),dimension(5,5,5) :: dq,res
         do j=1,5
            do i=1,5
               do jj=1,5
                  if (dq(i,j,jj) .ne. res(i,j,jj)) then
                     check = .false.
                     return
                  endif
               enddo
            enddo
         enddo
         check = .true.
         return
         end
