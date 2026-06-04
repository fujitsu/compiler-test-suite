subroutine s1
integer omp_get_thread_num
procedure(ss1),pointer,save::p1
!$omp threadprivate (p1)
interface 
  subroutine ss1(i) bind(c)
  end subroutine
  subroutine ss2(i) bind(c)
  end subroutine
end interface
!$omp parallel private(k)
 if (omp_get_thread_num() ==1) then
   p1=> ss1
 else 
   p1=> ss2
 end if
 call p1(k)
 if (omp_get_thread_num() ==1) then
   if (k/=1) print *,101
 else
   if (k/=2) print *,102
 endif
!$omp end parallel
end
call s1
print *,'pass'
end

  subroutine ss1(i) bind(c)
i=1
  end subroutine
  subroutine ss2(i) bind(c)
i=2
  end subroutine
