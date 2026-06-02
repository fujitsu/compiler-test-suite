interface
  function sub1() bind(c) result(ret)
    use, intrinsic::iso_c_binding
    integer(c_int)::ret
  end function sub1
  function sub2() bind(c) result(ret)
    use, intrinsic::iso_c_binding
    integer(c_int)::ret
  end function sub2
end interface
procedure(sub1),pointer,save,bind(c)::ffunptr
integer :: omp_get_thread_num
save
!$omp threadprivate(ffunptr)
ffunptr=>sub1
!$omp parallel copyin(ffunptr)
  if (ffunptr() /= 1) print *,'err'
  if (omp_get_thread_num() == 1) then
     ffunptr=>sub1
  else
     ffunptr=>sub2
  end if
!$omp end parallel
!$omp parallel
  if (omp_get_thread_num() == 1) then
     if (ffunptr() /= 1) print *,1
  else 
     if (ffunptr() /= 2) print *,2
  end if
!$omp end parallel
print *,'pass'
end

function sub1() bind(c) result(ret)
  use, intrinsic::iso_c_binding
  integer(c_int)::ret
  ret=1
end function sub1

function sub2() bind(c) result(ret)
  use, intrinsic::iso_c_binding
  integer(c_int)::ret
  ret=2
end function sub2
