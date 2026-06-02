program main
!!!implicit none

 block
  real   ::  name, name81
   name=1.1
   if (name/=1.1) print *,'error-1'
   name81=1.1
   if (name81/=1.1) print *,'error-2'
  end block
print *,'sngg337p : pass'
end program
