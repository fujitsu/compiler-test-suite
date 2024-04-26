    module mod_1
     integer::j
     integer::a(10)
     contains
      subroutine sub1(i)
        j=j+i
        k=j+1
        a(i)=k-a(i)
      end subroutine
    end module

    program main
     use mod_1
      a=1
      j=0
      k=10
      write(1,'(i4)') k
      rewind(1)
      read (1,'(i4)') k
      do i=1,k  
        m=i
        call sub1(m)
      enddo
      if (any(a/=(/1,3,6,10,15,21,28,36,45,55/))) print *,'error a->',a
      print *,'pass'
    end program
