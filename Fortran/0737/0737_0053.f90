program aaa
 interface
  subroutine sub(pp)
   integer(4),allocatable,dimension(:)::pp
  end subroutine
 end interface
  integer(4),allocatable,dimension(:)::pp
  allocate(pp(5))
  pp=1
  call sub(pp)
print *,'pass'
end

subroutine sub(pp)
  integer(4),allocatable,dimension(:)::pp
  if (any(pp/=1))write(6,*) "NG"
end
