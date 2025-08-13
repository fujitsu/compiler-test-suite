  call s1
  print *,'pass'
  end
  subroutine s1
   call ss1
   call ss2
   call ss3
   call ss4
   call ss5
   call ss6
   call ss7
   call ss8
   call ss9
   call ssa
  end
    subroutine set(v)
     double precision :: v(2)
     v=123._8
    end
          subroutine ssa1(rows)
           common /ssa1c/ t
           double precision,target :: t(4)
           type test
             sequence
             double precision, pointer :: list(:)
           end type test
           type(test),dimension(:)::rows
           rows(:) = test( t(2::2) )
          end subroutine
      subroutine ssa
            interface
              subroutine ssa1(rows)
              common /ssa1c/ t
              double precision,target :: t(4)
              type test
               sequence
               double precision, pointer :: list(:)
              end type test
              type(test),dimension(:)::rows
              end subroutine
            end interface
      type test
        sequence
        double precision, pointer :: list(:)
      end type test
      type(test) :: rows
      allocatable :: rows(:)
      double precision :: x(4)
      common /ssa1c/ t
      double precision,target :: t(4)
      n=2
      allocate (rows(n))
      call ssa1(rows)
      do i = 1,  n
            call set(rows(i)%list)
         write(40,*)  t(2::2)
      end do
      rewind 40
      read (40,*) x
      if (any(x/=123.0))write(6,*) "NG"
      end
      module ss9m
      double precision :: x(4)
      double precision,target :: t(4)
      type test
        sequence
        double precision, pointer :: list(:)
      end type test
      integer ::i
        contains
          subroutine ss91(rows)
            type(test),dimension(:)::rows
            rows(:) = test( t(2::2) )
          end subroutine
      end
      subroutine ss9
      use ss9m
      type(test) :: rows
      allocatable :: rows(:)
      n=2
      allocate (rows(n))
      call ss91(rows)
      do i = 1,  n
            call set(rows(i)%list)
         write(49,*)  t(2::2)
      end do
      rewind 49
      read (49,*) x
      if (any(x/=123.0))write(6,*) "NG"
      end
      module ss8m
      type test
        double precision, pointer :: list(:)
      end type test
      type(test) :: rows
      allocatable :: rows(:)
      double precision :: x(4)
      double precision,target :: t(4)
      integer ::i
        contains
          subroutine ss81()
            rows(i) = test( t(2::2) )
          end subroutine
      end
      subroutine ss8
      use ss8m
      n=2
      allocate (rows(n))
      do i = 1,  n
         call ss81()
            call set(rows(i)%list)
         write(48,*)  t(2::2)
      end do
      rewind 48
      read (48,*) x
      if (any(x/=123.0))write(6,*) "NG"
      end
      subroutine ss7
      double precision :: x(4)
      double precision,target :: t(4)
      type test
        double precision, pointer :: list(:)
      end type test
      type(test) :: rows
      allocatable :: rows(:)
      n=2
      allocate (rows(n))
      do i = 1,  n
         rows(i)%list=>f(t(2::2))
            call set(rows(i)%list)
      end do
      write(47,*)  (rows(i)%list,i=1,n)
      rewind 47
      read (47,*) x
      if (any(x/=123.0))write(6,*) "NG"
        contains
          function f(t)
            double precision,target::t(:)
            double precision,pointer::f(:)
            f=>t
         end function
      end
      subroutine ss6
      double precision :: x(4)
      double precision,target :: t(4)
      type test
        double precision, pointer :: list(:)
      end type test
      type(test) :: rows,y
      allocatable :: rows(:)
      y = test( t(2::2) )
      n=2
      allocate (rows(n))
      do i = 1,  n
         rows(i) = y
            call set(rows(i)%list)
         write(46,*)  t(2::2)
      end do
      rewind 46
      read (46,*) x
      if (any(x/=123.0))write(6,*) "NG"
      end
      subroutine ss5
      double precision :: x(4)
      double precision,target :: t(4)
      type test
        double precision, pointer :: list(:)
      end type test
      type(test) :: rows
      allocatable :: rows(:)
      n=2
      allocate (rows(n))
      do i = 1,  n
         rows(i) = ss51()
            call set(rows(i)%list)
         write(45,*)  t(2::2)
      end do
      rewind 45
      read (45,*) x
      if (any(x/=123.0))write(6,*) "NG"
        contains
          function ss51()
           type(test)::ss51
            ss51 = test( t(2::2) )
          end function
      end
      subroutine ss4
      double precision :: x(4)
      double precision,target :: t(4)
      type test
        double precision, pointer :: list(:)
      end type test
      type(test) :: rows
      allocatable :: rows(:)
      n=2
      allocate (rows(n))
      do i = 1,  n
         call ss41
            call set(rows(i)%list)
         write(44,*)  t(2::2)
      end do
      rewind 44
      read (44,*) x
      if (any(x/=123.0))write(6,*) "NG"
        contains
          subroutine ss41
            rows(i) = test( t(2::2) )
          end subroutine
      end
      subroutine ss3
      double precision :: x(4)
      double precision,target :: t(4)
      type test
        double precision, pointer :: list(:)
      end type test
      type(test) :: rows
      allocatable :: rows(:)
      n=2
      allocate (rows(n))
      do i = 1,  n
         rows(i) = test( t(2::2) )
            call set(rows(i)%list)
         write(43,*)  t(2::2)
      end do
      rewind 43
      read (43,*) x
      if (any(x/=123.0))write(6,*) "NG"
      end
      subroutine ss2
      double precision :: x(4)
      double precision,target :: t(4)
      type test
        double precision, pointer :: list(:)
      end type test
      type(test) :: rows
      allocatable :: rows(:)
      n=2
      allocate (rows(n))
      do i = 1,  n
         rows(i)%list=>t(2::2)
            call set(rows(i)%list)
      end do
      write(42,*)  (rows(i)%list,i=1,n)
      rewind 42
      read (42,*) x
      if (any(x/=123.0))write(6,*) "NG"
      end
      subroutine ss1
      double precision :: x(4)
      type test
        double precision, pointer :: list(:)
      end type test
      type(test) :: rows
      allocatable :: rows(:)
      n=2
      allocate (rows(n))
      do i = 1,  n
         allocate(rows(i)%list(n))
            call set(rows(i)%list)
      end do
      write(41,*)  (rows(i)%list,i=1,n)
      rewind 41
      read (41,*) x
      if (any(x/=123.0))write(6,*) "NG"
      end
