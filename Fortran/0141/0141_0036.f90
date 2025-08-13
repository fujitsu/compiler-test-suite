call s1
end
  recursive subroutine s1
  integer,allocatable::a(:)
  open(27,status='scratch')
  allocate(a(2))
  a=[1,2]
  call sub(a)
  print *,'pass'
   contains
   subroutine sub(a)
   integer,allocatable::a(:)
   namelist /nam/a
   write(27,nam)
   end subroutine
 end
