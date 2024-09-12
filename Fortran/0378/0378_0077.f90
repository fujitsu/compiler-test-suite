      call s1
      print *,'pass'
      end
      module m0
        type st 
         character(len=2),pointer::ps1
         character(len=2),pointer,dimension(:)::pa1
        end type
      contains
       subroutine pd(ps,pa)
       character(len=*),pointer::ps
       character(len=*),pointer,dimension(:)::pa
       end subroutine
       subroutine s2
        character(len=2),pointer::ps1
        character(len=2),pointer,dimension(:)::pa1
        type(st)::st1
        type(st),pointer::st2
        allocate (ps1);ps1='12'
        allocate (pa1(2));pa1=(/'34','56'/)
        allocate (st1%ps1);st1%ps1='12'
        allocate (st1%pa1(2));st1%pa1=(/'34','56'/)
        allocate (st2)
        allocate (st2%ps1);st2%ps1='12'
        allocate (st2%pa1(2));st2%pa1=(/'34','56'/)
        call pd(ps1,pa1)
        call pd(st1%ps1,st1%pa1)
        call pd(st2%ps1,st2%pa1)
        call s4(ps1,pa1,st1,st2)
        call s5(ps1,pa1,st1,st2)
        call s6(ps1,pa1,st1,st2)
      end subroutine
       subroutine s4(ps1,pa1,st1,st2)
        character(len=2),pointer::ps1
        character(len=2),pointer,dimension(:)::pa1
        type(st)::st1
        type(st),pointer::st2
        call pd(ps1,pa1)
        call pd(st1%ps1,st1%pa1)
        call pd(st2%ps1,st2%pa1)
       end subroutine
       subroutine s5(ps1,pa1,st1,st2)
        character(len=*),pointer::ps1
        character(len=*),pointer,dimension(:)::pa1
        type(st)::st1
        type(st),pointer::st2
        optional::ps1,pa1,st1,st2
        call pd(ps1,pa1)
        call pd(st1%ps1,st1%pa1)
        call pd(st2%ps1,st2%pa1)
       end subroutine
       subroutine s6(ps1,pa1,st1,st2)
        character(len=2),pointer::ps1
        character(len=2),pointer,dimension(:)::pa1
        type(st)::st1
        type(st),pointer::st2
        optional::ps1,pa1,st1,st2
        call pd(ps1,pa1)
        call pd(st1%ps1,st1%pa1)
        call pd(st2%ps1,st2%pa1) 
       end subroutine
      end module
      subroutine s1
      use m0
      call s2
      end
