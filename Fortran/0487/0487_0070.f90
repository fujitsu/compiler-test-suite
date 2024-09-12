   interface
     subroutine sx
     end subroutine
   end interface
  procedure(sx),pointer :: test
  procedure(test):: zz
  procedure(test),pointer:: zzz
print *,'pass'
end 
