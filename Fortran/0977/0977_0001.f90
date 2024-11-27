module typedef
 type gauge_field
  complex(8), dimension(:, :, :, :, :), allocatable ::u
end type gauge_field
end

  module module_field
    use typedef
    type(gauge_field), dimension(:),pointer,save :: gauge
  end

  module module_vol
    integer :: vol , volh , volh_tot
  end

  subroutine init_common_vol
   use module_vol

   vol = 4 * 4 * 4 * 4
    volh = vol / 2
   volh_tot = 4 * (4+2) * (4+2) * (4+2)

    write(1,*) vol,volh,volh_tot
  end

  program main
   use module_field
   use module_vol
   integer :: mu , eo , i
   complex(8), dimension (3, 3) :: uuu

   write(1,*) ' &lt;&lt; main start &gt;&gt;'

   call init_common_vol
   allocate(gauge(10),STAT=ierr1)
   if ( ierr1 .ne. 0)  then
   write(6,*) ierr1
      stop 008
   end if
 
   allocate(gauge(1)%u(3, 3, volh_tot, 0:1, 4),STAT=ierr2)
   if ( ierr2 .ne. 0)  then
     write(6,*) ierr2
     stop 009
   end if

   do mu = 1, 4
     do eo = 0, 1
       do i = 1, volh
         gauge(1)%u(1,1,i,eo,mu) = (9.0 , 1.0 )
        call staple(uuu,gauge(1)%u,i,eo,mu )
      end do
     end do
    end do

    write(1,*) ' &lt;&lt; main end &gt;&gt;'
    print *,'pass'
    end program main

 subroutine staple(uuu, u, i, e, mu)
    use module_vol

      complex(8), dimension (3, 3), intent(out) :: uuu
      complex(8), dimension (3, 3, volh_tot, 0:1, 4), intent(in) :: u
      integer, intent(in) :: i, e, mu
      integer :: o, nu, j1, j2, j3, j4
   
      o = 0 + 1 - e
      uuu(1:3,1:3) = 0
  
      do nu = 1, 4
         j1 =  1
         j2 =  2
         j3 =  3
         j4 =  4
         uuu(1,1) = u(1,1,i,e,mu)
       enddo
     end subroutine staple
   
