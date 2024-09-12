subroutine s1
 type x
   integer::x1
   character(32767),allocatable::x2(:)
   integer::x3=2
 end type
 type (x),allocatable::v5
  allocate(v5)
 if (v5%x1/=0)print *,501,v5%x1
 if (allocated(v5%x2))print *,502
 if (v5%x3/=2)print *,503
end
call s1
call s1
call s1
call s1
print *,'pass'
end
