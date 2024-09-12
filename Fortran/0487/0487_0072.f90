interface
     subroutine tx
     end subroutine
     subroutine ty
     end subroutine
end interface
  procedure(sx),pointer :: t1
  procedure(sy),pointer:: t2
t1=> tx
t2=> ty

print *,'pass'
contains
     subroutine sx
     end subroutine
     subroutine sy
     end subroutine
end

     subroutine tx
write(1,*) 1
     end subroutine
     subroutine ty
write(1,*) 2
     end subroutine
