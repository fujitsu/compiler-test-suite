  integer,allocatable::a(:)
  open(26,status='scratch')
  allocate(a(2))
  a=[1,2]
  call sub(a)
  print *,'pass'
   contains
   subroutine sub(a)
   integer,allocatable::a(:)
   namelist /nam/a
   write(26,nam)
   end subroutine
 end
