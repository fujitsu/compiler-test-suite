       subroutine sub1(i,j)
         i=0
         j=0
       entry ent1(i,j)
         i=i+1
         j=j-1
         call ent2(i,j)
         call ent3(i,j)
       end subroutine

       subroutine sub2(i,j)
         i=0
         j=0
       entry ent2(i,j)
         i=i+1
         j=j-1
         call ent3(i,j)
       end subroutine

       subroutine sub3(i,j)
         i=0
         j=0
       entry ent3(i,j)
         i=i+1
         j=j-1
       end subroutine

      program main
        i=0
        j=0
        call ent1(i,j)
        call ent2(i,j)
        call ent3(i,j)
        if (i/=7.or.j/=-7) print *,'error'
        print *,'pass'
      end program
