 call s1
 print *,'pass'
 end
      module Item_module
      private
      public :: Item, C_Item
      type Item
         integer :: val
         type (Item), pointer :: next
      end type Item
      contains
         subroutine C_Item(this,value,pitem)
         type (Item) :: this
         integer :: value
         type (Item), pointer, optional :: pitem
         this%val = value
         if (present(pitem)) then
            this%next => pitem
         else
            nullify(this%next)
         endif
         end subroutine C_Item
      end module Item_module
      module List_module
      use Item_module
      private
      public :: List, C_List, D_list
      public :: insert, append, remove, removeAll, is_present, is_empty
      public :: display, concat, reverse
      type List
         private
         type (Item), pointer :: list, at_end
      end type List
      contains
         subroutine C_List(this)
         type (List) :: this
         nullify(this%list,this%at_end)
         end subroutine C_List
         subroutine D_List(this)
         type (List) :: this
         call removeAll(this)
         end subroutine D_List
         subroutine insert(this,val)
         type (List) :: this
         integer :: val, ierr
         type (Item), pointer :: pt
         allocate(pt,stat=ierr)
         if (ierr.ne.0) then
            write (6,*) 'cannot allocate item'
            stop
         endif
         call C_Item(pt,val,this%list)
         if (.not.associated(this%list)) this%at_end => pt
         this%list => pt
         end subroutine insert
         subroutine append(this,val)
         type (List) :: this
         integer :: val, ierr
         type (Item), pointer :: pt
         allocate(pt,stat=ierr)
         if (ierr.ne.0) then
            write (6,*) 'cannot allocate item'
            stop
         endif
         call C_Item(pt,val)
         if (.not.associated(this%list)) then
            this%list => pt
         else
            this%at_end%next => pt
         endif
         this%at_end => pt
         end subroutine append
         integer function remove(this,val)
         type (List) :: this
         integer :: val, cnt
         type (Item), pointer :: pt, tmp, prev
         pt => this%list
         cnt = 0
         do while (associated(pt))
            if (.not.(pt%val.eq.val)) exit
            tmp => pt%next
            deallocate(pt)
            cnt = cnt + 1
            pt => tmp
         enddo
         this%list => pt
         if (.not.associated(pt)) then
            nullify(this%at_end)
            remove = cnt
            return
         endif
         prev => pt
         pt => pt%next
         do while (associated(pt))
            if (pt%val.eq.val) then
               prev%next => pt%next
               if (associated(this%at_end,pt)) this%at_end => prev
               deallocate(pt)
               cnt = cnt + 1
               pt => prev%next
            else
               prev => pt
               pt => pt%next
            endif
         enddo
         remove = cnt
         end function remove
         subroutine removeAll(this)
         type (List) :: this
         type (Item), pointer :: pt, tmp
         pt => this%list
         do while (associated(pt))
            tmp => pt
            pt => pt%next
            deallocate(tmp)
         enddo
         nullify(this%at_end,this%list)
         end subroutine removeAll
         logical function is_present(this,someItem)
         type (List) :: this
         integer :: someItem
         type (Item), pointer :: pt
         if (.not.associated(this%list)) then
            is_present = .false.
            return
         endif
         if ((this%list%val.eq.someItem).or.(this%at_end%val.eq.someItem&
     &)) then
            is_present = .true.
            return
         endif
         pt => this%list%next
         do
            if (associated(pt,this%at_end)) exit
            if (pt%val.eq.someItem) then
               is_present = .true.
               return
            endif
            pt => pt%next
         enddo
         is_present = .false.
         end function is_present
         logical function is_empty(this)
         type (List) :: this
         is_empty = .not.associated(this%list)
         end function is_empty
         subroutine display(this)
         type (List) :: this
         type (Item), pointer :: pt
         pt => this%list
         write (21,'(a)',advance='no') '( '
         do while (associated(pt))
            write (21,'(i2,a)',advance='no') pt%val, ' '
            pt => pt%next
         enddo
         write (21,'(a)') ') '
         end subroutine display
         function at_end(this) result(prev)
         type (List) :: this
         type (Item), pointer :: prev, curr
         if (.not.associated(this%list)) then
            nullify(prev)
            return
         endif
         curr => this%list
         prev => curr
         do while (associated(curr))
            prev => curr
            curr => curr%next
         enddo
         end function at_end
         subroutine concat(this,il)
         type (List) :: this, il
         type (Item), pointer :: pt
         pt => il%list
         do while (associated(pt))
            call append(this,pt%val)
            pt => pt%next
         enddo
         end subroutine concat
         subroutine reverse(this)
         type (List) :: this
         type (Item), pointer :: pt, prv, tmp
         if ((.not.associated(this%list)).or.(.not.associated(this%list%&
     &next))) return
         pt => this%list
         nullify(prv)
         this%list => this%at_end
         this%at_end => pt
         do while (.not.associated(pt,this%list))
            tmp => pt%next
            pt%next => prv
            prv => pt
            pt => tmp
         enddo
         this%list%next => prv
         end subroutine reverse
      end module List_module
      subroutine s1
      use List_module
      integer, parameter :: size = 12, odd = 1, size2 = 8
      integer :: tmp, ix, odd_cnt, i
      type (List) il, il2
      call C_List(il)
      call C_List(il2)
      if ((.not.is_empty(il)).or.(is_present(il,1024))) then
         write (6,*) 'List class internal error (1)'
      else
         write (21,*) 'ok: empty List class'
      endif
      tmp = remove(il,1024)
      call display(il)
      do ix = 1, size
         if (mod(ix-1,2).ne.0) then
            tmp = odd
         else
            tmp = ix - 1
         endif
         call append(il,tmp)
      enddo
      call display(il)
      if (.not.is_present(il,odd)) then
         write (6,*) 'List class internal error (2)'
      endif
      odd_cnt = remove(il,odd)
      write (21,*) odd_cnt,' items of value ',odd,' removed.'
      call display(il)
      do ix = 1, odd_cnt
         call insert(il,odd)
      enddo
      call display(il)
      call removeAll(il)
      call display(il)
      do i = 1, size2/2
         call append(il,i-1)
      enddo
      do i = size2/2 + 1, size2
         call append(il2,i-1)
      enddo
      write (21,'(a)',advance='no') 'list il: '  ;  call display(il)
      write (21,'(a)',advance='no') 'list il2: ' ;  call display(il2)
      write (21,'(a)',advance='no') 'concat il il2: '
      call concat(il,il2)  ;  call display(il)
      write (21,'(a)',advance='no') 'reverse il: '
      call removeAll(il2)  ;  call reverse(il)  ;  call display(il)
      end
