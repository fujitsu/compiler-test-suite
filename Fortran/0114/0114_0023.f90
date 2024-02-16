 subroutine sub
 complex,allocatable,dimension(:) ::a
 allocate(a(1))
 a=reshape((/(1,1),(0,0),(3,3),(4,4),(0,0)/),(/1/))
 deallocate(a)
 end
 call sub
 print *,"PASS"
 end
