c
c
      call s1
      print *,'pass'
      end
      module m1
       interface
        subroutine s11(m,a)
        character*(*) m(:),a(:)
        end subroutine s11
       end interface
       interface
        subroutine s113(x,f1,f2)
        character (len=*),dimension(:)::x
        integer,optional::f1,f2
        end subroutine
       end interface
       integer::i1=1,i2=2,i3=3
       integer,dimension(:),pointer::vm
       contains
       subroutine s112(x,f1,f2)
       integer,optional::f1,f2
       character (len=*),dimension(:)::x
       if (ubound(x,dim=1)/=2)print *,'fail'
       select case(present(f2))
         case (.true.); if (len(x)/=1)print *,'fail'
         case (.false.); if (len(x)/=2)print *,'fail'
       end select
       select case(present(f2))
       case (.not..true.)
          if (any(x/=(/ '12' , '56' /) ))print *,'fail'
       case (.not..false.)
          if (any(x/=(/ '2' , '6' /) ))print *,'fail'
       end select
       if (.not.present(f1)) x='xx'
       end subroutine
      end module
      subroutine s1
      use m1
      character*2 m(3)/'12','34','56'/,a(3)
      call s11(m,a)
      end
      subroutine s11(m,a)
      use m1
      integer,dimension(2),parameter::vi=(/1,3/)
      character*(*) m(:),a(:)
      allocate (vm(-2:-1));vm(-2)=1;vm(-1)=3
      call s111(m(vi),f1=1)
      call s112(m(vi),f1=1)
      call s113(m(vi),f1=1)
      call s111(m(vm),f1=1)
      call s112(m(vm),f1=1)
      call s113(m(vm),f1=1)
      call s111(m(vi)(:),f1=1)
      call s112(m(vi)(:),f1=1)
      call s113(m(vi)(:),f1=1)
      call s111(m(vm)(:),f1=1)
      call s112(m(vm)(:),f1=1)
      call s113(m(vm)(:),f1=1)
      call s111(m(vi)(i2:i2),f2=1,f1=0)
      call s112(m(vi)(i2:i2),f2=1,f1=0)
      call s113(m(vi)(i2:i2),f2=1,f1=0)
      call s111(m(vm)(i2:i2),f2=1,f1=0)
      call s112(m(vm)(i2:i2),f2=1,f1=0)
      call s113(m(vm)(i2:i2),f2=1,f1=0)
      contains
       subroutine s111(x,f1,f2)
       character (len=*),dimension(:)::x
       integer,optional::f1,f2
       if (ubound(x,dim=1)/=2)print *,'fail'
       select case(present(f2))
         case (.true.); if (len(x)/=1)print *,'fail'
         case (.false.); if (len(x)/=2)print *,'fail'
       end select
       select case(present(f2))
       case (.not..true.)
          if (any(x/=(/ '12' , '56' /) ))print *,'fail'
       case (.not..false.)
          if (any(x/=(/ '2' , '6' /) ))print *,'fail'
       end select
       if (.not.present(f1)) x='xx'
       end subroutine
      end subroutine
      subroutine s113(x,f1,f2)
       character (len=*),dimension(:)::x
       integer,optional::f1,f2
       if (ubound(x,dim=1)/=2)print *,'fail'
       select case(present(f2))
         case (.true.); if (len(x)/=1)print *,'fail'
         case (.false.); if (len(x)/=2)print *,'fail'
       end select
       select case(present(f2))
       case (.not..true.)
          if (any(x/=(/ '12' , '56' /) ))print *,'fail'
       case (.not..false.)
          if (any(x/=(/ '2' , '6' /) ))print *,'fail'
       end select
       if (.not.present(f1)) x='xx'
      end subroutine
