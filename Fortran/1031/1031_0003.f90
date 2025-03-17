      type entry
        type(entry),pointer :: next
      end type entry
      type(entry),pointer :: first=>null()
      type(entry),pointer :: end_data=>null()
      integer    ,pointer :: e1=>null()
      integer    ,pointer :: e2=>null()
      call x(.not.associated(first,end_data))
      allocate(first)
      first%next=>null()
      call x(.not.associated(first%next,end_data))
      call x(.not.associated(e1,e2))
      print *,'pass'
      end
      subroutine x(j)
      logical j
      if (.not.j)write(6,*) "NG"
      end
