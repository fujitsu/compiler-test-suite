subroutine s1
 type x
   integer::x1
   integer::x3=2
 end type
 type (x),allocatable::v5,v51,v52
  allocate(v5)
 if (v5%x1/=0)print *,501,v5%x1
 if (v5%x3/=2)print *,503
  allocate(v51)
 if (v51%x1/=0)print *,511,v51%x1
 if (v51%x3/=2)print *,513
  allocate(v52)
 if (v52%x1/=0)print *,521,v52%x1
 if (v52%x3/=2)print *,523
end
call s1
call s1
call s1
call s1
print *,'pass'
end
