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
           type test
             sequence
             double precision, pointer :: list(:)
           end type
           type(test)::v
     v%list=123._8
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
            call set(rows(i))
         write(50,*)  t(2::2)
      end do
      rewind 50
      read (50,*) x
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
            call set(rows(i))
         write(59,*)  t(2::2)
      end do
      rewind 59
      read (59,*) x
      if (any(x/=123.0))write(6,*) "NG"
      end
      module ss8m
      type test
        sequence
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
            call set(rows(i))
         write(58,*)  t(2::2)
      end do
      rewind 58
      read (58,*) x
      if (any(x/=123.0))write(6,*) "NG"
      end
      subroutine ss7
      double precision :: x(4)
      double precision,target :: t(4)
      type test
        sequence
        double precision, pointer :: list(:)
      end type test
      type(test) :: rows
      allocatable :: rows(:)
      n=2
      allocate (rows(n))
      do i = 1,  n
         rows(i)%list=>f(t(2::2))
            call set(rows(i))
      end do
      write(57,*)  (rows(i)%list,i=1,n)
      rewind 57
      read (57,*) x
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
        sequence
        double precision, pointer :: list(:)
      end type test
      type(test) :: rows,y
      allocatable :: rows(:)
      y = test( t(2::2) )
      n=2
      allocate (rows(n))
      do i = 1,  n
         rows(i) = y
            call set(rows(i))
         write(56,*)  t(2::2)
      end do
      rewind 56
      read (56,*) x
      if (any(x/=123.0))write(6,*) "NG"
      end
      subroutine ss5
      double precision :: x(4)
      double precision,target :: t(4)
      type test
        sequence
        double precision, pointer :: list(:)
      end type test
      type(test) :: rows
      allocatable :: rows(:)
      n=2
      allocate (rows(n))
      do i = 1,  n
         rows(i) = ss51()
            call set(rows(i))
         write(55,*)  t(2::2)
      end do
      rewind 55
      read (55,*) x
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
        sequence
        double precision, pointer :: list(:)
      end type test
      type(test) :: rows
      allocatable :: rows(:)
      n=2
      allocate (rows(n))
      do i = 1,  n
         call ss41
            call set(rows(i))
         write(54,*)  t(2::2)
      end do
      rewind 54
      read (54,*) x
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
        sequence
        double precision, pointer :: list(:)
      end type test
      type(test) :: rows
      allocatable :: rows(:)
      n=2
      allocate (rows(n))
      do i = 1,  n
         rows(i) = test( t(2::2) )
            call set(rows(i))
         write(53,*)  t(2::2)
      end do
      rewind 53
      read (53,*) x
      if (any(x/=123.0))write(6,*) "NG"
      end
      subroutine ss2
      double precision :: x(4)
      double precision,target :: t(4)
      type test
        sequence
        double precision, pointer :: list(:)
      end type test
      type(test) :: rows
      allocatable :: rows(:)
      n=2
      allocate (rows(n))
      do i = 1,  n
         rows(i)%list=>t(2::2)
            call set(rows(i))
      end do
      write(52,*)  (rows(i)%list,i=1,n)
      rewind 52
      read (52,*) x
      if (any(x/=123.0))write(6,*) "NG"
      end
      subroutine ss1
      double precision :: x(4)
      type test
        sequence
        double precision, pointer :: list(:)
      end type test
      type(test) :: rows
      allocatable :: rows(:)
      n=2
      allocate (rows(n))
      do i = 1,  n
         allocate(rows(i)%list(n))
            call set(rows(i))
      end do
      write(51,*)  (rows(i)%list,i=1,n)
      rewind 51
      read (51,*) x
      if (any(x/=123.0))write(6,*) "NG"
      end
