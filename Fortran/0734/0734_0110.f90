module Handle_Huge
   implicit none

PRIVATE :: check

   integer, parameter :: M1=10
   integer, parameter :: M2=1000

   type :: rec_group
      character(len=60), pointer :: r(:)
   end type
   type (rec_group), pointer :: p(:)
   type (rec_group), pointer, private :: temp(:)
contains

subroutine read_data (u, p, n, m)
   integer, intent(in)  :: u
   type (rec_group), pointer :: p(:)
   integer, intent(inout) :: n
   integer, intent(out) :: m
   integer :: rc, i, j, i1, nn

   nn = n

   m = M1
   i1 = 0
   n = 0

   allocate (p(0:m-1))

   do
      do i=i1,m-1
         allocate (p(i)%r(0:M2-1),stat=rc);  call check(1,rc)

         do j=0,M2-1       
            read(u,"(a)",iostat=rc) p(i)%r(j)

            if (rc < 0) return

            n = n + 1
            if (n == nn) return
         end do
      end do
      temp => p

      allocate (p(0:m+M1-1),stat=rc);  call check(1,rc)

      do i=0,m-1
         p(i)%r => temp(i)%r
      end do

      do i=m,m+M1-1
         NULLIFY (p(i)%r)
      end do

      deallocate (temp,stat=rc)
      call check(2,rc)
      i1 = m
      m = m + M1
   end do
end subroutine read_data
subroutine check(n,rc)
   integer, intent(in) :: n, rc

   if (rc == 0) return

   select case (n)
      case (1)
         print *, "allocation failed:  rc =", rc
      case (2)
         print *, "deallocation failed:  rc =", rc
   end select

   STOP
end subroutine check
subroutine purge(q)
   type(rec_group), pointer :: q(:)

   integer :: i, n, rc

   n = SIZE(q)

   do i=0,n-1
      if (associated(q(i)%r)) then
         deallocate(q(i)%r,stat=rc);  call check(2,rc)
      end if
   end do

   deallocate(q,stat=rc);  call check(2,rc)
end subroutine purge
function recval(q,i) result (r)
   type (rec_group), pointer :: q(:)
   integer, intent(in) :: i
   character(len=60)   :: r

   r = q(i/M2)%r(modulo(i-1,M2))
end function recval
subroutine set_recval(q,i,x)
   type (rec_group), pointer :: q(:)
   integer, intent(in) :: i
   character(len=60), intent(in) :: x

   q(i/M2)%r(modulo(i-1,M2)) = x
end subroutine set_recval
function greater(q,i,j) result (gt)
   type (rec_group), pointer :: q(:)
   integer, intent(in) :: i, j
   logical             :: gt

   gt = q(i/M2)%r(modulo(i,M2)) > q(j/M2)%r(modulo(j,M2))
end function greater

end module Handle_Huge
module handle_alloc
   implicit none

PRIVATE :: q

   integer, parameter :: M2=1000
   character(len=60), pointer :: pp(:)
   character(len=60), pointer :: q(:)

contains

subroutine read_data1(u, p, n, m)
   integer, intent(in)  :: u
   character(len=60), pointer :: p(:)
   integer, intent(inout) :: n
   integer, intent(out) :: m

   integer :: j, rc, rc1, rc2, nn
   character(len=60) :: r

   nn = n

   n = 0
   m = 0
   do
      read(u,"(a)",iostat=rc) r
      if (rc < 0) return

      n = n + 1

      if (n > m) then
         allocate (q(m+M2),stat=rc1);  call check(1,rc1)

         do j=1,m
            q(j) = p(j)
         end do

         if (associated(p)) then
            deallocate (p,stat=rc2);  call check(2,rc2)
         end if

         p => q
         m = m + M2
      end if

      p(n) = r
      if (n == nn) return
   end do

contains

subroutine check(n,rc)
   integer, intent(in) :: n, rc

   if (rc == 0) return

   select case (n)
      case (1)
         print *, "allocation failed:  rc =", rc
      case (2)
         print *, "deallocation failed:  rc =", rc
   end select

   STOP
end subroutine check

end subroutine read_data1

end module handle_alloc
subroutine generate_file(fname,n)
   implicit none

   character(len=*), intent(in) :: fname
   integer, intent(in) :: n

   integer, parameter :: MM=1000
   integer :: i, j, j1, k, n1, n2
   real, dimension(MM) :: x, y, z

   open(1,file=fname,action="write")

   n1 = n / MM
   n2 = modulo(n,MM)
   j1 = 1
   if (n2 > 0) j1 = 0

   k = 0
   do j=j1,n1
      call random_number(x)
      call random_number(y)
      call random_number(z)

      do i=1,MM
         k = k + 1
         write(1,"(a,i8,a,3f12.7)") "(x,y,z)-triple", k, ": ", x(i), y(i), z(i)
         if (k == n) exit
      end do
   end do

   close(1,status="keep")
end subroutine generate_file
program main
   use Handle_Huge
   use Handle_Alloc
   implicit none

   integer, parameter :: ntab=32

   integer :: i, n, s, k, k1, k2, k3, m
   real :: t0, t1, et0, et1
   real, dimension(1:ntab) :: cth, eth, cta, eta
   integer, dimension(1:ntab) :: dlenh, plenh, plena

  write(99)10
  rewind 99
  read(99)n

   if (n > 0) then
      call elapsed_time(et0)
      call CPU_time(t0)

      call generate_file("test.huge.data",n)

      call CPU_time(t1)
      call elapsed_time(et1)

      write(1,"(a,i10)") "records written:", n
      write(1,"(a,f10.3,a)") "CPU time:    ", t1-t0, " sec"
      write(1,"(a,f10.3,a)") "elapsed time:", et1-et0, " sec"
      open(98,file='test.huge.data')
      close(98,status='delete')
      print *,'pass'
      STOP
   end if
   write(*,"(a)") "Reading file using the HUGE FILE method"

   k1 =  12500
   k2 = 200000
   k3 =  12500

   m = (k2 - k1) / k3 + 1
   if (m > ntab) STOP "summary tables too small"
   m = 0

   do k=k1,k2,k3
      open(1,file="huge.data",action="read")

      call elapsed_time(et0)
      call CPU_time(t0)

      n = k
      call read_data (1, p, n, s)

      call CPU_time(t1)
      call elapsed_time(et1)

      close(1,status="keep")

      m = m + 1
      dlenh(m) = n
      plenh(m) = s
      cth(m) = t1 - t0
      eth(m) = et1 - et0

      write(*,"(2(a,i8))") "records retrieved:", dlenh(m), ",  SIZE(p(:)) =", plenh(m)
      write(*,"(a,f10.3,a)") "CPU time:    ", cth(m), " sec"
      write(*,"(a,f10.3,a)") "elapsed time:", eth(m), " sec"
      write(*,"(i8,4x,a)")  (i, recval(p,i), i=1,n,n/4)

      call purge(p) 
   end do   
   write(*,"(//a)") "Reading file using the REALLOCATE method"

   m = 0

   do k=k1,k2,k3
      open(1,file="huge.data",action="read")

      call elapsed_time(et0)
      call CPU_time(t0)

      n = k
      call read_data1(1, pp, n, s)

      call CPU_time(t1)
      call elapsed_time(et1)

      close(1,status="keep")

      m = m + 1
      plena(m) = s
      cta(m) = t1 - t0
      eta(m) = et1 - et0

      write(*,"(2(a,i8))") "records retrieved:", n, ",  SIZE(pp(:)) =", plena(m)
      write(*,"(a,f10.3,a)") "CPU time:    ", cta(m), " sec"
      write(*,"(a,f10.3,a)") "elapsed time:", eta(m), " sec"
      write(*,"(i8,4x,a)")  (i, pp(i), i=1,n,n/4)

      deallocate (pp)
   end do

   write(12,"((i8,2(4x,i8,2f9.3)))")   &
      (dlenh(i), plenh(i), cth(i), eth(i), plena(i), cta(i), eta(i), i=1,m)

contains

subroutine elapsed_time(t)
   implicit none
   real, intent(out) :: t

   integer, SAVE :: t0 = -1
   integer :: t1, tt(8)

   call date_and_time(values=tt)

   t1 = ((tt(5) * 60 + tt(6)) * 60 + tt(7)) * 1000 + tt(8)
   if (t0 < 0)  t0 = t1

   t = 0.001 * REAL(t1-t0)
   if (t < 0)  t = t + 86400.0
end subroutine ELAPSED_time

end program main
