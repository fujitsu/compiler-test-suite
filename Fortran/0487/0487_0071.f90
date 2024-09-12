   interface
     subroutine sx
     end subroutine
     subroutine sy(k)
     end subroutine
   end interface
  procedure(sx),pointer :: t1
  procedure(sy),pointer:: t2
interface gen
  procedure t1,t2
end interface

t1=>sx
t2=>sy
call gen
call gen(2)
print *,'pass'
end 
     subroutine sx
write(1,*) 1
     end subroutine
     subroutine sy(k)
write(1,*) k
     end subroutine
