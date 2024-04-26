    module mod_1
     integer::j
     contains
      subroutine sub1(i,a)
       integer::a
        j=j+i
        a=i
      end subroutine
    end module

    module mod_22
     contains
      subroutine sub22(j,a,n)
       integer::a(n)
        if (j/=sum(a)) print *,'error a ->',a,' j ->',j
      end subroutine
    end module

    program main
     use mod_1
     use mod_22
     integer::a(10)
      j=0
      do i=1,10
        call sub1(i,a(i))
      enddo
      call sub22(j,a,10)
      print *,'pass'
    end program
