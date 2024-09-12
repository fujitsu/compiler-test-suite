!$OMP PARALLEL
!$OMP PARALLEL
  call sub
!$OMP END PARALLEL
!$OMP END PARALLEL
call s
end
subroutine sub
end
subroutine s
print *,'pass'
end
