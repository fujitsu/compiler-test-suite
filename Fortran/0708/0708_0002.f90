 call s1
 print *,'pass'
 end

module procs
implicit none

contains

   subroutine copy90(a,b,i,j)
      real, dimension(:) :: a,b
      integer i,j
      a(i) = b(j)
   end subroutine copy90

end module procs

   subroutine copy77(a,b,i,j)
      real, dimension(*) :: a,b
      integer i,j
      a(i) = b(j)
   end subroutine copy77

subroutine s1
   use procs
   type x
   real, dimension(:), pointer :: a,b
   end type
   type(x),allocatable::xx(:)
   integer i,count1,count2,rate,n
   allocate (xx(9:10))
   do jjj=9,10
   n = 1000000
   allocate (xx(jjj)%a(n),xx(jjj)%b(n))
   xx(jjj)%a = 1
   xx(jjj)%b = 1
   do i = 1,4
      call system_clock(count1,rate)
      call copy77(xx(jjj)%a,xx(jjj)%b,i,i+1)
      call system_clock(count2,rate)
      write(2,'(a,f9.6)')'Time taken (assumed-size) ',(count2-count1)/real(rate)
      call system_clock(count1,rate)
      call copy77(xx(jjj)%a,xx(jjj)%b,i+1,i)
      call system_clock(count2,rate)
      write(2,'(a,f9.6)')'Time taken (assumed-size) ',(count2-count1)/real(rate)

      call system_clock(count1,rate)
      call copy90(xx(jjj)%a,xx(jjj)%b,i,i+1)
      call system_clock(count2,rate)
      write(2,'(a,f9.6)')'Time taken (assumed-shape) ',(count2-count1)/real(rate)

      call system_clock(count1,rate)
      call copy90(xx(jjj)%a,xx(jjj)%b,i+1,i)
      call system_clock(count2,rate)
      write(2,'(a,f9.6)')'Time taken (assumed-shape) ',(count2-count1)/real(rate)
   end do
   deallocate (xx(jjj)%a,xx(jjj)%b)
 end do
end
