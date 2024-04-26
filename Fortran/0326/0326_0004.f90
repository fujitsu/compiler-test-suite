 module solvers
 contains
 subroutine pcg()
     !$OMP PARALLEL
     !$OMP END PARALLEL
     !$OMP PARALLEL
     !$OMP END PARALLEL
 end subroutine
 subroutine cgr()
     !$OMP PARALLEL
     !$OMP END PARALLEL
 end subroutine
 subroutine cgrb()
     !$OMP PARALLEL
     !$OMP END PARALLEL
 end subroutine
end

print *,"pass"
end
