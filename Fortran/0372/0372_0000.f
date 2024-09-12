      program main
      i=1
      call isub1(i)
      call sub1(i)
      call ent1(i)
      call ent2(i)
      if(i-8)20,10,20
   10 write(6,*) ' *** ok ***'
      go to 30
   20 write(6,*) ' *** ng ***'
   30 stop
      contains
        subroutine isub1(j)
        j=j+1
        return
        end subroutine isub1
      end
      subroutine sub1(j)
      call isub1(j)
      entry ent1(j)
      call isub1(j)
      entry ent2(j)
      call isub1(j)
      return
      contains
        subroutine isub1(k)
        k=k+1
        return
        end subroutine isub1
      end
