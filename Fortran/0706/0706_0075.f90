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
       integer,dimension(:),pointer::v
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
      character*(*) m(:),a(:)
      allocate (v(-2:-1));v(-2)=1;v(-1)=3
      a=m;call s111(a(1:3:2)); if (any(a(1:3:2)/='xx'))print *,'fail'
      a=m;call s112(a(1:3:2)); if (any(a(1:3:2)/='xx'))print *,'fail'
      a=m;call s113(a(1:3:2)); if (any(a(1:3:2)/='xx'))print *,'fail'
      a=m;call s111(a(i1:i3:i2)); if (any(a(1:3:2)/='xx'))print *,'fail'
      a=m;call s112(a(i1:i3:i2)); if (any(a(1:3:2)/='xx'))print *,'fail'
      a=m;call s113(a(i1:i3:i2)); if (any(a(1:3:2)/='xx'))print *,'fail'
      a=m;call s111(a(1:3:2)(:)); if (any(a(1:3:2)/='xx'))print *,'fail'
      a=m;call s112(a(1:3:2)(:)); if (any(a(1:3:2)/='xx'))print *,'fail'
      a=m;call s113(a(1:3:2)(:)); if (any(a(1:3:2)/='xx'))print *,'fail'
      a=m;call s111(a(i1:i3:i2)(:))
      if (any(a(1:3:2)/='xx'))print *,'fail'
      a=m;call s112(a(i1:i3:i2)(:))
      if (any(a(1:3:2)/='xx'))print *,'fail'
      a=m;call s113(a(i1:i3:i2)(:))
      if (any(a(1:3:2)/='xx'))print *,'fail'
      a=m;call s111(a(1:3:2)(i2:i2),f2=1)
          if (any(a(1:3:2)/=(/'1x','5x'/)))print *,'fail'
      a=m;call s112(a(1:3:2)(i2:i2),f2=1)
          if (any(a(1:3:2)/=(/'1x','5x'/)))print *,'fail'
      a=m;call s113(a(1:3:2)(i2:i2),f2=1)
          if (any(a(1:3:2)/=(/'1x','5x'/)))print *,'fail'
      a=m;call s111(a(i1:i3:i2)(i2:i2),f2=1)
          if (any(a(1:3:2)/=(/'1x','5x'/)))print *,'fail'
      a=m;call s112(a(i1:i3:i2)(i2:i2),f2=1)
          if (any(a(1:3:2)/=(/'1x','5x'/)))print *,'fail'
      a=m;call s113(a(i1:i3:i2)(i2:i2),f2=1)
          if (any(a(1:3:2)/=(/'1x','5x'/)))print *,'fail'
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
