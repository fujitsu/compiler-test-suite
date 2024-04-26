 module solvers
 contains
 subroutine cgr()
     !$OMP PARALLEL
     !$OMP END PARALLEL
  contains
   subroutine subb()
   end subroutine
 end subroutine
 subroutine pcg()
     !$OMP PARALLEL
     !$OMP END PARALLEL
     !$OMP PARALLEL
     !$OMP PARALLEL
     !$OMP END PARALLEL
     !$OMP END PARALLEL
 end subroutine
 subroutine cgrb()
     !$OMP PARALLEL
     !$OMP END PARALLEL
  contains
   subroutine subb()
   end subroutine
 end subroutine
end

 module solvers1
 contains
 subroutine cgr()
     !$OMP PARALLEL
     !$OMP END PARALLEL
  contains
   subroutine subb()
   end subroutine
 end subroutine
 subroutine pcg()
     !$OMP PARALLEL
     !$OMP END PARALLEL
     !$OMP PARALLEL
     !$OMP PARALLEL
     !$OMP END PARALLEL
     !$OMP END PARALLEL
 end subroutine
 subroutine cgrb()
  contains
   subroutine subb()
     !$OMP PARALLEL
     !$OMP END PARALLEL
   end subroutine
 end subroutine
end

 module solvers2
 contains
 subroutine pcg()
     !$OMP PARALLEL
     !$OMP END PARALLEL
     !$OMP PARALLEL
     !$OMP PARALLEL
     !$OMP END PARALLEL
     !$OMP END PARALLEL
 end subroutine
 subroutine cgr()
     !$OMP PARALLEL
     !$OMP END PARALLEL
  contains
   subroutine subb()
   end subroutine
 end subroutine
 subroutine cgrb()
  contains
   subroutine subb()
     !$OMP PARALLEL
     !$OMP END PARALLEL
   end subroutine
 end subroutine
end

 module solvers3
 contains
 subroutine cgr()
     !$OMP PARALLEL
     !$OMP END PARALLEL
  contains
   subroutine subb()
     !$OMP PARALLEL
     !$OMP END PARALLEL
   end subroutine
 end subroutine
 subroutine pcg()
     !$OMP PARALLEL
     !$OMP END PARALLEL
     !$OMP PARALLEL
     !$OMP PARALLEL
     !$OMP END PARALLEL
     !$OMP END PARALLEL
 end subroutine
 subroutine cgrb()
  contains
   subroutine subb()
   end subroutine
 end subroutine
end

print *,"pass"
end
