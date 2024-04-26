call s1
end
  recursive subroutine s1
  integer,allocatable::a(:)
  open(1,status='scratch')
  allocate(a(2))
  a=[1,2]
  call sub(a)
  print *,'pass'
   contains
   subroutine sub(a)
   integer,allocatable::a(:)
   namelist /nam/a
   write(1,nam)
   end subroutine
 end
