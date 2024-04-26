         integer,parameter :: nn = 5
         real(8),target,dimension(nn,nn,nn) :: dq,k
         real(8),target,dimension(nn,nn,nn-4) :: dq2
         real(8),pointer,  dimension(:,:,:) :: dq_star,kkk
         real(8),pointer,  dimension(:,:,:) :: dq_star2
         real(8) res

         interface
            real(8) function calc(dq_star, nn, kkk,dq_star2)
              real(8),pointer,dimension(:,:,:) :: dq_star,kkk,dq_star2
              integer nn
            end function calc
         endinterface

         dq2 = 2
         dq_star=>dq
         dq_star2=>dq2
         kkk=>k

         dq = reshape((/(i,i=1,125)/),(/5,5,5/))
         k = 2
         res = calc(dq_star, nn, kkk,dq_star2)
         if (res .le. 426.0 .and. res .ge. 424.0 ) then
            write(6,*) ' ok1 '
         else
            write(6,*) ' ng1 ',res
         endif
         res = sum(dq2)
         if (res .le. 351.0 .and. res .ge. 349.0 ) then
            write(6,*) ' ok2 '
         else
            write(6,*) ' ng2 ',res
         endif
         end

         real(8) function calc(dq_star, n, kkk,dq_star2)
         real(8),          dimension(-2:2) :: a
         real(8),pointer,  dimension(:,:,:) :: dq_star,kkk
         real(8),pointer,  dimension(:,:,:) :: dq_star2
         call xxx(a)
         do j=1,n
            do i=1,n
               calc = sum(dq_star(i,j,:)+a(-2:2)*kkk(i,j,:))
               dq_star2(i,j,:) = a(1:1)* kkk(i,j,5:)
            enddo
         enddo
         end function calc

         subroutine xxx(a)
         real(8),          dimension(5) :: a
         a = (/(i,i=1,10,2)/)
         return
         end
