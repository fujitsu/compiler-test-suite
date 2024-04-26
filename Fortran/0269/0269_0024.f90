         call sub()
         contains
         subroutine sub()
         integer,pointer :: jj
         integer,allocatable :: jj2
         integer,allocatable :: jj3(:)
         integer :: crr(6)
         allocate(jj3(4))
         allocate(jj)
         allocate(jj2)
 
          crr = [(jj+10,integer::jj=1,6)]
          if(any(crr /= [11,12,13,14,15,16]))print*,101
          crr = [(jj2+20,integer::jj2=1,6)]
          if(any(crr /= [21,22,23,24,25,26]))print*,102
          crr = [(jj3+30,integer::jj3=1,6)]
          if(any(crr /= [31,32,33,34,35,36]))print*,103
         print*,"PASS"
         end subroutine
        end

