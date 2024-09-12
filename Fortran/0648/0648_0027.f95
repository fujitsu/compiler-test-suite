  module typ

    type xxx
      integer     , allocatable :: ai(:)
      complex     , allocatable :: ax(:)
      character(0), allocatable :: ac0(:)
      character(2), allocatable :: ac2(:)
    end type

  end module

  module mod

    contains

    subroutine modsub(aa)

      use typ
      type(xxx),intent(in) :: aa

      integer :: error = 0

      type(xxx),intent(in) :: aaa

        if (allocated(aa%ai )) error = error+1
        if (allocated(aa%ax )) error = error+1
        if (allocated(aa%ac0)) error = error+1
        if (allocated(aa%ac2)) error = error+1

        if (error .ne. 0) then
          print *," +++ NG +++ ",error
          error = 0
        end if
        return

      entry modsub2(aa)

        if (.not.allocated(aa%ai )) error = error+1
        if (.not.allocated(aa%ax )) error = error+1
        if (.not.allocated(aa%ac0)) error = error+1
        if (.not.allocated(aa%ac2)) error = error+1

        if (lbound(aa%ai ,1).ne.1) error = error+1
        if (lbound(aa%ax ,1).ne.2) error = error+1
        if (lbound(aa%ac0,1).ne.4) error = error+1
        if (lbound(aa%ac2,1).ne.8) error = error+1

        if (ubound(aa%ai ,1).ne.1) error = error+1
        if (ubound(aa%ax ,1).ne.2) error = error+1
        if (ubound(aa%ac0,1).ne.4) error = error+1
        if (ubound(aa%ac2,1).ne.8) error = error+1

        if (any(aa%ai .ne. 1     )) error = error+1
        if (any(aa%ax .ne.(1.,1.))) error = error+1
        if (any(aa%ac0.ne.""     )) error = error+1
        if (any(aa%ac2.ne."AL"   )) error = error+1

        if (error .ne. 0) then
          print *," +++ NG +++ ",error
          error = 0
        end if
        return

      entry modsub3(aaa)

        if (.not.allocated(aaa%ai )) error = error+1
        if (.not.allocated(aaa%ax )) error = error+1
        if (.not.allocated(aaa%ac0)) error = error+1
        if (.not.allocated(aaa%ac2)) error = error+1

        if (lbound(aaa%ai ,1).ne.-1) error = error+1
        if (lbound(aaa%ax ,1).ne.-2) error = error+1
        if (lbound(aaa%ac0,1).ne.-4) error = error+1
        if (lbound(aaa%ac2,1).ne.-8) error = error+1

        if (ubound(aaa%ai ,1).ne. 0) error = error+1
        if (ubound(aaa%ax ,1).ne.-1) error = error+1
        if (ubound(aaa%ac0,1).ne.-3) error = error+1
        if (ubound(aaa%ac2,1).ne.-7) error = error+1

        if (any(aaa%ai .ne. 1     )) error = error+1
        if (any(aaa%ax .ne.(1.,1.))) error = error+1
        if (any(aaa%ac0.ne.""     )) error = error+1
        if (any(aaa%ac2.ne."AL"   )) error = error+1

        if (error .ne. 0) then
          print *," +++ NG +++ ",error
          error = 0
        end if
        return

      entry modsub4(aaa)

        if (.not.allocated(aaa%ai )) error = error+1
        if (.not.allocated(aaa%ax )) error = error+1
        if (.not.allocated(aaa%ac0)) error = error+1
        if (.not.allocated(aaa%ac2)) error = error+1

        if (lbound(aaa%ai ,1).ne. 1) error = error+1
        if (lbound(aaa%ax ,1).ne. 1) error = error+1
        if (lbound(aaa%ac0,1).ne. 1) error = error+1
        if (lbound(aaa%ac2,1).ne. 1) error = error+1

        if (ubound(aaa%ai ,1).ne. 0) error = error+1
        if (ubound(aaa%ax ,1).ne. 0) error = error+1
        if (ubound(aaa%ac0,1).ne. 0) error = error+1
        if (ubound(aaa%ac2,1).ne. 0) error = error+1

        if (error .ne. 0) then
          print *," +++ NG +++ ",error
          error = 0
        end if
        return

    end subroutine

    function modfun(aa)

      use typ

      integer :: modfun
      type(xxx),intent(in) :: aa

      integer :: error = 0

      integer :: modfun2
      type(xxx),intent(in) :: aaa
      integer :: modfun3
      integer :: modfun4

        if (allocated(aa%ai )) error = error+1
        if (allocated(aa%ax )) error = error+1
        if (allocated(aa%ac0)) error = error+1
        if (allocated(aa%ac2)) error = error+1

        if (error .ne. 0) then
          print *," +++ NG +++ ",error
          error = 0
        end if
        modfun = 0
        return

      entry modfun2(aa)
        if (.not.allocated(aa%ai )) error = error+1
        if (.not.allocated(aa%ax )) error = error+1
        if (.not.allocated(aa%ac0)) error = error+1
        if (.not.allocated(aa%ac2)) error = error+1

        if (lbound(aa%ai ,1).ne.1) error = error+1
        if (lbound(aa%ax ,1).ne.2) error = error+1
        if (lbound(aa%ac0,1).ne.4) error = error+1
        if (lbound(aa%ac2,1).ne.8) error = error+1

        if (ubound(aa%ai ,1).ne.1) error = error+1
        if (ubound(aa%ax ,1).ne.2) error = error+1
        if (ubound(aa%ac0,1).ne.4) error = error+1
        if (ubound(aa%ac2,1).ne.8) error = error+1

        if (any(aa%ai .ne. 1     )) error = error+1
        if (any(aa%ax .ne.(1.,1.))) error = error+1
        if (any(aa%ac0.ne.""     )) error = error+1
        if (any(aa%ac2.ne."AL"   )) error = error+1

        if (error .ne. 0) then
          print *," +++ NG +++ ",error
          error = 0
        end if
        modfun2 = 0
        return

      entry modfun3(aaa)

        if (.not.allocated(aaa%ai )) error = error+1
        if (.not.allocated(aaa%ax )) error = error+1
        if (.not.allocated(aaa%ac0)) error = error+1
        if (.not.allocated(aaa%ac2)) error = error+1

        if (lbound(aaa%ai ,1).ne.-1) error = error+1
        if (lbound(aaa%ax ,1).ne.-2) error = error+1
        if (lbound(aaa%ac0,1).ne.-4) error = error+1
        if (lbound(aaa%ac2,1).ne.-8) error = error+1

        if (ubound(aaa%ai ,1).ne. 0) error = error+1
        if (ubound(aaa%ax ,1).ne.-1) error = error+1
        if (ubound(aaa%ac0,1).ne.-3) error = error+1
        if (ubound(aaa%ac2,1).ne.-7) error = error+1

        if (any(aaa%ai .ne. 1     )) error = error+1
        if (any(aaa%ax .ne.(1.,1.))) error = error+1
        if (any(aaa%ac0.ne.""     )) error = error+1
        if (any(aaa%ac2.ne."AL"   )) error = error+1

        if (error .ne. 0) then
          print *," +++ NG +++ ",error
          error = 0
        end if
        modfun3 = 0
        return

      entry modfun4(aaa)

        if (.not.allocated(aaa%ai )) error = error+1
        if (.not.allocated(aaa%ax )) error = error+1
        if (.not.allocated(aaa%ac0)) error = error+1
        if (.not.allocated(aaa%ac2)) error = error+1

        if (lbound(aaa%ai ,1).ne. 1) error = error+1
        if (lbound(aaa%ax ,1).ne. 1) error = error+1
        if (lbound(aaa%ac0,1).ne. 1) error = error+1
        if (lbound(aaa%ac2,1).ne. 1) error = error+1

        if (ubound(aaa%ai ,1).ne. 0) error = error+1
        if (ubound(aaa%ax ,1).ne. 0) error = error+1
        if (ubound(aaa%ac0,1).ne. 0) error = error+1
        if (ubound(aaa%ac2,1).ne. 0) error = error+1

        if (error .ne. 0) then
          print *," +++ NG +++ ",error
          error = 0
        end if
        modfun4 = 0
        return

    end function

  end module mod

  program main

    use typ
    use mod

    integer     , allocatable :: ai(:)
    complex     , allocatable :: ax(:)
    character(0), allocatable :: ac0(:)
    character(2), allocatable :: ac2(:)

    type(xxx) :: aa

    integer :: res

    interface 
      function funi(item) result(ai)
      integer     , allocatable :: ai(:)
      integer     , intent(in)  :: item
      endfunction

      function funx(item) result(ax)
      complex     , allocatable :: ax(:)
      integer     , intent(in)  :: item
      end function

      function func0(item) result(ac0)
      character(0), allocatable :: ac0(:)
      integer     , intent(in)  :: item
      end function

      function func2(item) result(ac2)
      character(2), allocatable :: ac2(:)
      integer     , intent(in)  :: item
      end function

      function funa(item) result(aa)
      use typ
      type(xxx)                 :: aa
      integer     , intent(in)  :: item
      end function
    end interface

    interface operator(+)
      function l1op(l1,l2) result(ai)
      integer     , allocatable :: ai(:)
      logical(1),intent(in) :: l1,l2
      end function

      function l2op(l1,l2) result(ax)
      complex     , allocatable :: ax(:)
      logical(2),intent(in) :: l1,l2
      end function

      function l4op(l1,l2) result(ac0)
      character(0), allocatable :: ac0(:)
      logical(4),intent(in) :: l1,l2
      end function

      function l8op(l1,l2) result(ac2)
      character(2), allocatable :: ac2(:)
      logical(8),intent(in) :: l1,l2
      end function

      function c1op(c1,c2) result(aa)
      use typ
      type(xxx)               :: aa
      character(1),intent(in) :: c1,c2
      end function
    end interface

    call modsub(xxx(ai,ax,ac0,ac2))
    call modsub(xxx(funi(1),funx(1),func0(1),func2(1)))
    call modsub(xxx(.false._1+.false._1,.false._2+.false._2, &
        &       .false._4+.false._4,.false._8+.false._8))
    call modsub(aa)
    call modsub(funa(1))
    call modsub("0"+"0")

    allocate(ai(1:1),ax(2:2),ac0(4:4),ac2(8:8))
    ai = 1 ; ax = (1.,1.) ; ac0 = 'abcdefg' ; ac2="AL"
    call modsub2(xxx(ai,ax,ac0,ac2))
    call modsub2(xxx(funi(2),funx(2),func0(2),func2(2)))
    call modsub2(xxx(.false._1+.true._1,.false._2+.true._2, &
        &       .false._4+.true._4,.false._8+.true._8))
    allocate(aa%ai(1:1),aa%ax(2:2),aa%ac0(4:4),aa%ac2(8:8))
    aa%ai = 1 ; aa%ax = (1.,1.) ; aa%ac0 = 'abcdefg' ; aa%ac2="AL"
    call modsub2(aa)
    call modsub2(funa(2))
    call modsub2("0"+"1")

    deallocate(ai,ax,ac0,ac2)
    deallocate(aa%ai,aa%ax,aa%ac0,aa%ac2)

    allocate(ai(-1:0),ax(-2:-1),ac0(-4:-3),ac2(-8:-7))
    ai = 1 ; ax = (1.,1.) ; ac0 = 'abcdefg' ; ac2="AL"
    call modsub3(xxx(ai,ax,ac0,ac2))
    call modsub3(xxx(funi(3),funx(3),func0(3),func2(3)))
    call modsub3(xxx(.true._1+.false._1,.true._2+.false._2, &
        &       .true._4+.false._4,.true._8+.false._8))
    allocate(aa%ai(-1:0),aa%ax(-2:-1),aa%ac0(-4:-3),aa%ac2(-8:-7))
    aa%ai = 1 ; aa%ax = (1.,1.) ; aa%ac0 = 'abcdefg' ; aa%ac2="AL"
    call modsub3(aa)
    call modsub3(funa(3))
    call modsub3("1"+"0")

    deallocate(ai,ax,ac0,ac2)
    deallocate(aa%ai,aa%ax,aa%ac0,aa%ac2)

    allocate(ai(1:0),ax(2:-1),ac0(4:-3),ac2(8:-7))
    ai = 1 ; ax = (1.,1.) ; ac0 = 'abcdefg' ; ac2="AL"
    call modsub4(xxx(ai,ax,ac0,ac2))
    call modsub4(xxx(funi(4),funx(4),func0(4),func2(4)))
    call modsub4(xxx(.true._1+.true._1,.true._2+.true._2, &
        &       .true._4+.true._4,.true._8+.true._8))
    allocate(aa%ai(1:0),aa%ax(2:-1),aa%ac0(4:-3),aa%ac2(8:-7))
    aa%ai = 1 ; aa%ax = (1.,1.) ; aa%ac0 = 'abcdefg' ; aa%ac2="AL"
    call modsub4(aa)
    call modsub4(funa(4))
    call modsub4("1"+"1")

    deallocate(ai,ax,ac0,ac2)
    deallocate(aa%ai,aa%ax,aa%ac0,aa%ac2)

    res = modfun(xxx(ai,ax,ac0,ac2))
    res = modfun(xxx(funi(1),funx(1),func0(1),func2(1)))
    res = modfun(xxx(.false._1+.false._1,.false._2+.false._2, &
        &       .false._4+.false._4,.false._8+.false._8))
    res = modfun(aa)
    res = modfun(funa(1))
    res = modfun("0"+"0")

    allocate(ai(1:1),ax(2:2),ac0(4:4),ac2(8:8))
    ai = 1 ; ax = (1.,1.) ; ac0 = 'abcdefg' ; ac2="AL"
    res = modfun2(xxx(ai,ax,ac0,ac2))
    res = modfun2(xxx(funi(2),funx(2),func0(2),func2(2)))
    res = modfun2(xxx(.false._1+.true._1,.false._2+.true._2, &
        &       .false._4+.true._4,.false._8+.true._8))
    allocate(aa%ai(1:1),aa%ax(2:2),aa%ac0(4:4),aa%ac2(8:8))
    aa%ai = 1 ; aa%ax = (1.,1.) ; aa%ac0 = 'abcdefg' ; aa%ac2="AL"
    res = modfun2(aa)
    res = modfun2(funa(2))
    res = modfun2("0"+"1")

    deallocate(ai,ax,ac0,ac2)
    deallocate(aa%ai,aa%ax,aa%ac0,aa%ac2)

    allocate(ai(-1:0),ax(-2:-1),ac0(-4:-3),ac2(-8:-7))
    ai = 1 ; ax = (1.,1.) ; ac0 = 'abcdefg' ; ac2="AL"
    res = modfun3(xxx(ai,ax,ac0,ac2))
    res = modfun3(xxx(funi(3),funx(3),func0(3),func2(3)))
    res = modfun3(xxx(.true._1+.false._1,.true._2+.false._2, &
        &       .true._4+.false._4,.true._8+.false._8))
    allocate(aa%ai(-1:0),aa%ax(-2:-1),aa%ac0(-4:-3),aa%ac2(-8:-7))
    aa%ai = 1 ; aa%ax = (1.,1.) ; aa%ac0 = 'abcdefg' ; aa%ac2="AL"
    res = modfun3(aa)
    res = modfun3(funa(3))
    res = modfun3("1"+"0")

    deallocate(ai,ax,ac0,ac2)
    deallocate(aa%ai,aa%ax,aa%ac0,aa%ac2)

    allocate(ai(1:0),ax(2:-1),ac0(4:-3),ac2(8:-7))
    ai = 1 ; ax = (1.,1.) ; ac0 = 'abcdefg' ; ac2="AL"
    res = modfun4(xxx(ai,ax,ac0,ac2))
    res = modfun4(xxx(funi(4),funx(4),func0(4),func2(4)))
    res = modfun4(xxx(.true._1+.true._1,.true._2+.true._2, &
        &       .true._4+.true._4,.true._8+.true._8))
    allocate(aa%ai(1:0),aa%ax(2:-1),aa%ac0(4:-3),aa%ac2(8:-7))
    aa%ai = 1 ; aa%ax = (1.,1.) ; aa%ac0 = 'abcdefg' ; aa%ac2="AL"
    res = modfun4(aa)
    res = modfun4(funa(4))
    res = modfun4("1"+"1")

    res = res*2

    print *," *** pass *** "

  end program main

  function funi(item) result(ai)
    integer     , allocatable :: ai(:)
    integer     , intent(in)  :: item

    select case(item)
    case(1)
      return
    case(2)
      allocate(ai(1:1))
      ai = 1
      return
    case(3)
      allocate(ai(-1:0))
      ai = 1
      return
    case(4)
      allocate(ai(1:0))
      ai = 1
      return
    end select

  end function

  function funx(item) result(ax)
    complex     , allocatable :: ax(:)
    integer     , intent(in)  :: item

    select case(item)
    case(1)
      return
    case(2)
      allocate(ax(2:2))
      ax = (1.,1.)
      return
    case(3)
      allocate(ax(-2:-1))
      ax = (1.,1.)
      return
    case(4)
      allocate(ax(2:-1))
      ax = (1.,1.)
      return
    end select

  end function

  function func0(item) result(ac0)
    character(0), allocatable :: ac0(:)
    integer     , intent(in)  :: item

    select case(item)
    case(1)
      return
    case(2)
      allocate(ac0(4:4))
      ac0 = "abcdefg"
      return
    case(3)
      allocate(ac0(-4:-3))
      ac0 = "abcdefg"
      return
    case(4)
      allocate(ac0(4:-3))
      ac0 = "abcdefg"
      return
    end select

  end function

  function func2(item) result(ac2)
    character(2), allocatable :: ac2(:)
    integer     , intent(in)  :: item

    select case(item)
    case(1)
      return
    case(2)
      allocate(ac2(8:8))
      ac2 = "AL"
      return
    case(3)
      allocate(ac2(-8:-7))
      ac2 = "AL"
      return
    case(4)
      allocate(ac2(8:-7))
      ac2 = "AL"
      return
    end select

  end function

  function funa(item) result(aa)
    use typ
    type(xxx) :: aa
    integer,intent(in) :: item

    select case(item)    
    case(1)
      return
    case(2)
      allocate(aa%ai(1:1),aa%ax(2:2),aa%ac0(4:4),aa%ac2(8:8))
      aa%ai = 1
      aa%ax = (1.,1.)
      aa%ac0 = "abcdefg"
      aa%ac2 = "AL"
      return
    case(3)
      allocate(aa%ai(-1:0),aa%ax(-2:-1),aa%ac0(-4:-3),aa%ac2(-8:-7))
      aa%ai = 1
      aa%ax = (1.,1.)
      aa%ac0 = "abcdefg"
      aa%ac2 = "AL"
      return
    case(4)
      allocate(aa%ai(1:0),aa%ax(2:-1),aa%ac0(4:-3),aa%ac2(8:-7))
      aa%ai = 1
      aa%ax = (1.,1.)
      aa%ac0 = "abcdefg"
      aa%ac2 = "AL"
      return
    end select

  end function

  function l1op(l1,l2) result(ai)
    integer     , allocatable :: ai(:)
    logical(1),intent(in) :: l1,l2

    if (.not.l1 .and. .not.l2) then
      return
    else if (.not.l1 .and. l2) then
      allocate(ai(1:1))
      ai = 1
      return
    else if (l1 .and. .not.l2) then
      allocate(ai(-1:0))
      ai = 1
      return
    else if (l1 .and. l2) then
      allocate(ai(1:0))
      ai = 1
      return
    end if 

  end function

  function l2op(l1,l2) result(ax)
    complex     , allocatable :: ax(:)
    logical(2),intent(in) :: l1,l2

    if (.not.l1 .and. .not.l2) then
      return
    else if (.not.l1 .and. l2) then
      allocate(ax(2:2))
      ax = (1.,1.)
      return
    else if (l1 .and. .not.l2) then
      allocate(ax(-2:-1))
      ax = (1.,1.)
      return
    else if (l1 .and. l2) then
      allocate(ax(2:-1))
      ax = (1.,1.)
      return
    end if
  end function

  function l4op(l1,l2) result(ac0)
    character(0), allocatable :: ac0(:)
    logical(4),intent(in) :: l1,l2

    if (.not.l1 .and. .not.l2) then
      return
    else if (.not.l1 .and. l2) then
      allocate(ac0(4:4))
      ac0 = "abcdefg"
      return
    else if (l1 .and. .not.l2) then
      allocate(ac0(-4:-3))
      ac0 = "abcdefg"
      return
    else if (l1 .and. l2) then
      allocate(ac0(4:-3))
      ac0 = "abcdefg"
      return
    end if

  end function

  function l8op(l1,l2) result(ac2)
    character(2), allocatable :: ac2(:)
    logical(8),intent(in) :: l1,l2

    if (.not.l1 .and. .not.l2) then
      return
    else if (.not.l1 .and. l2) then
      allocate(ac2(8:8))
      ac2 = "AL"
      return
    else if (l1 .and. .not.l2) then
      allocate(ac2(-8:-7))
      ac2 = "AL"
      return
    else if (l1 .and. l2) then
      allocate(ac2(8:-7))
      ac2 = "AL"
      return
    end if

  end function

  function c1op(c1,c2) result(aa)
    use typ
    type(xxx)               :: aa
    character(1),intent(in) :: c1,c2

    if (c1=="0" .and. c2=="0") then
      return
    else if (c1=="0" .and. c2=="1") then
      allocate(aa%ai(1:1),aa%ax(2:2),aa%ac0(4:4),aa%ac2(8:8))
      aa%ai = 1
      aa%ax = (1.,1.)
      aa%ac0 = "abcdefg"
      aa%ac2 = "AL"
      return
    else if (c1=="1" .and. c2=="0") then
      allocate(aa%ai(-1:0),aa%ax(-2:-1),aa%ac0(-4:-3),aa%ac2(-8:-7))
      aa%ai = 1
      aa%ax = (1.,1.)
      aa%ac0 = "abcdefg"
      aa%ac2 = "AL"
      return
    else if (c1=="1" .and. c2=="1") then
      allocate(aa%ai(1:0),aa%ax(2:-1),aa%ac0(4:-3),aa%ac2(8:-7))
      aa%ai = 1
      aa%ax = (1.,1.)
      aa%ac0 = "abcdefg"
      aa%ac2 = "AL"
      return
    end if

  end function
