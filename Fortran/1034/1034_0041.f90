module lib

  public :: add, printL, remove, removeL, nm

  integer, parameter, private :: noninit = -huge(1)
  integer, save :: nm = 0

  type :: childt
     private
     integer :: k = noninit
     type (childt), pointer  :: child_pt => null()
  end type childt

  type :: mothert
     type (childt), pointer  :: root_child_pt => null()
     type (mothert), pointer :: mother_pt => null()
  end type mothert

  type (childt),  pointer, private       ::  trav_child_pt => null()
  type (mothert), pointer, private       :: trav_mother_pt => null()
  type (mothert), pointer, private, save :: root_mother_pt => null()

  type (mothert), target, save :: mother

contains

  subroutine add (n,m,mx)
    integer, intent (in) :: n
    integer, intent (in) :: m, mx(m)
    integer :: k

    if (.not. associated (root_mother_pt)) then
       root_mother_pt => mother
       trav_mother_pt => root_mother_pt
       allocate (trav_mother_pt%root_child_pt)
       nm = nm + 1
    end if

    k = nm

    if (n <= nm ) then
       trav_mother_pt => root_mother_pt
       do while (associated(trav_mother_pt))
          if (k == n) then
             call addL(trav_mother_pt%root_child_pt, m, mx)
          end if
          k = k - 1
          trav_mother_pt => trav_mother_pt%mother_pt
       end do
    else
       call addM ()
       k = nm
       trav_mother_pt => root_mother_pt
       do while (associated(trav_mother_pt))
          if (k == n) then
             call addL(trav_mother_pt%root_child_pt, m, mx)
          end if
          k = k - 1
          trav_mother_pt => trav_mother_pt%mother_pt
       end do
    end if

  contains

    subroutine addL (list_pt, m, mx)
      type (childt), pointer :: list_pt
      integer, intent (in)   :: m, mx(m)
      type (childt), pointer :: temp_pt
      integer                :: istart, i

      istart = 1

      if (list_pt%k == noninit) then
         list_pt%k = mx(1)
         if (m==1) then
            return
         else
            istart = 2
         end if
      end if

      do i=istart, m
         allocate (temp_pt)
         temp_pt%k = mx(i)
         temp_pt%child_pt => list_pt
         list_pt => temp_pt
         nullify (temp_pt)
      end do
    end subroutine addL

    subroutine addM ()
      type (mothert), pointer :: temp_pt

      allocate (temp_pt)
      allocate (temp_pt%root_child_pt)
      nm = nm + 1
      temp_pt%mother_pt => root_mother_pt
      root_mother_pt => temp_pt
      nullify (temp_pt)

    end subroutine addM

  end subroutine add

  subroutine removeL (n,m)
    type (childt), pointer :: temp_pt
    integer, intent(in)    :: n,m
    integer                :: i, k

    k = nm
    trav_mother_pt => root_mother_pt
ml: do while (associated(trav_mother_pt))
       if (k == n) then
          trav_child_pt => trav_mother_pt%root_child_pt
          do i=1, m
             temp_pt => trav_child_pt
             trav_child_pt => trav_child_pt%child_pt
             trav_mother_pt%root_child_pt => trav_child_pt
             deallocate (temp_pt)
          end do
          exit ml
       end if
       trav_mother_pt => trav_mother_pt%mother_pt
       k = k - 1
    end do ml

  end subroutine removeL

  subroutine printL(m)
    integer, intent (in) :: m
    integer :: k

    k = nm
    trav_mother_pt => root_mother_pt
ml: do while (associated(trav_mother_pt))
       if (k == m) then
          trav_child_pt => trav_mother_pt%root_child_pt
          do while (associated(trav_child_pt))
             write(35,*) trav_child_pt%k
             trav_child_pt => trav_child_pt%child_pt
          end do
          exit ml
       end if
       trav_mother_pt => trav_mother_pt%mother_pt
       k = k - 1
    end do ml

  end subroutine printL

end module lib

program main
  use lib

  call add(1,5,(/1,3,5,7,9/))
  call printL(1)

  call add(2,5,(/2,4,6,8,10/))
  call printL(2)

  call removeL (1,2)
  call printL (1)

  call removeL (2,1)
  call printL (2)

  if (nm/=2)print *,'error-1'
call chk
print *,'pass'
end program main

subroutine chk
rewind 35
k=0
read(35,*)i;if (i/=9)k=k+1
read(35,*)i;if (i/=7)k=k+1
read(35,*)i;if (i/=5)k=k+1
read(35,*)i;if (i/=3)k=k+1
read(35,*)i;if (i/=1)k=k+1
read(35,*)i;if (i/=10)k=k+1
read(35,*)i;if (i/=8)k=k+1
read(35,*)i;if (i/=6)k=k+1
read(35,*)i;if (i/=4)k=k+1
read(35,*)i;if (i/=2)k=k+1
read(35,*)i;if (i/=5)k=k+1
read(35,*)i;if (i/=3)k=k+1
read(35,*)i;if (i/=1)k=k+1
read(35,*)i;if (i/=8)k=k+1
read(35,*)i;if (i/=6)k=k+1
read(35,*)i;if (i/=4)k=k+1
read(35,*)i;if (i/=2)k=k+1
if (k/=0)print *,'error-2'
end
