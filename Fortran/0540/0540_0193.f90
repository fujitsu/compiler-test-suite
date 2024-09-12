module mod01
  type :: HistoryCollection
  end type HistoryCollection
end module mod01

module mod02
   use mod01
   private
end module mod02

module mod03
  type :: HistoryCollection
     integer::x
    contains
      procedure :: AddGrid
  end type
  contains
    subroutine AddGrid(this)
      class(HistoryCollection) :: this
    end subroutine AddGrid
end module mod03

module mod04
  contains
    subroutine Initialize (list)
  use mod02
  use mod03
      type(HistoryCollection), pointer     :: list
      call list%AddGrid()
    end
end
  use mod02
  use mod03
  use mod04
      type(HistoryCollection), pointer     :: list
allocate(list)
      call list%AddGrid()
print *,'pass'
end
