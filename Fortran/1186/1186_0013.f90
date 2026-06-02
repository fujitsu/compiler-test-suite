program main
implicit none
 block
  real   ::  name, name81
   name=1.1
   if (name/=1.1) print *,1001
   name81=1.1
   if (name81/=1.1) print *,1002
  end block
print *,'sngg336p : pass'
end program
