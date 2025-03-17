      integer ia(10,10,10,10,10),ib(10,10,10,10,10)
      real ra(1000),rb(1000),rc(1000)
      common //n1,n2,n3,n4,n5,n6

      call init()

!$OMP DO
      do i=n1,n2
         do j=n3,n4
            do k=n5,n6
               do l=n3,n6
                  do m=n2,n3,-1
                     ia(i,j,k,l,m) = -2
                     ib(i,j,k,l,m) = -3
                     ia(i,j,k,l,m) = ia(i,j,k,l,m) + 1
                     ib(i,j,k,l,m) = ib(i,j,k,l,m) + 2
                     ia(i,j,k,l,m) = ia(i,j,k,l,m) + ib(i,j,k,l,m)
                     if (ia(i,j,k,l,m) > 10000) then
                        ia(i,j,k,l,m) = 3
                     endif
                  enddo
               enddo
            enddo
         enddo
      enddo
!$OMP ENDDO

      write(6,*) ia(1,2,3,4,5)


!$OMP CRITICAL
      do i=1,n2*n4*n6
         ra(i) = i
         rb(i) = -i
         rc(i) = i - 500
      enddo
!$OMP ENDCRITICAL
!$OMP DO
      do i=n1,n2*n4*n6
         ra(i) = rb(i) + rc(i)
      enddo
!$OMP ENDDO
      do i=n1,n2*n4*n6
         rb(i) = rc(i) + ra(i)
      enddo
      do i=n1,n2*n4*n6
         rc(i) = ra(i) + rb(i)
      enddo

      write(6,*) ra(1),rb(2),rc(3)

      end

      subroutine init
      common //n1,n2,n3,n4,n5,n6
      n1 = 1
      n2 = 10
      n3 = 1
      n4 = 10
      n5 = 1
      n6 = 10
      end
