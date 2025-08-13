 type string
  character, dimension(:), pointer :: str
 end type
 integer :: u = 40
 integer :: i, k
 type (string), dimension(:), allocatable :: x
 integer, parameter :: siz = 300

 write(u,*) 10
 do kk=1,10
 write(u,'(a)') '123456789a'
 end do
rewind u
 read(u, *) k
 allocate(x(k))
 do i = 1, k
   call read_string(x(i))
 end do
do kk=1,10
  write(kk+1000,'(a)')x(kk)%str
end do
print *,'pass'

 contains
   subroutine read_string(X)
   type (string) :: x

   integer :: sl
   character, dimension(siz) :: ss
   character(siz) :: s
   equivalence(s, ss)

   read(u, "(a)") s
   sl = len_trim(s)
   allocate (x%str(sl))
   x%str = ss(1:sl)
   end subroutine read_string

 end
