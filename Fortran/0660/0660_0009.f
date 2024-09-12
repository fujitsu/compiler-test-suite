      program main   
       integer :: n,f
       write(8,*) 6
       rewind 8
       read(8,*) n
       write(*,*) 'n=',n
       write(*,*) 'n!=',f(n)
       print *,'pass'
      end program main   
      recursive function f(n) result(fact)
       integer :: n,fact
       if (n<=0) then
          fact=1
       else
          fact =n*f(n-1)
       end if
      end function f 
