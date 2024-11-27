      module Item_module
      type Item
         integer :: val
         type (Item), pointer :: next
      end type Item
      end module Item_module
      module List_module
      use Item_module
      type List
         type (Item), pointer :: list, at_end
      end type List
      contains
         subroutine append(this,val)
         type (List) :: this
         integer :: val
         type (Item), save,pointer :: pt
         allocate(pt)
          pt%val = val
          nullify(pt%next)
         if (.not.associated(this%list)) then
            this%list => pt
         else
            this%at_end%next => pt
         endif
         this%at_end => pt
         end subroutine append
         integer function remove(this,val)
         type (List) :: this
         integer :: val
         type (Item), pointer      :: pt,prev
         pt => this%list
         prev => this%list
         pt => pt%next
               write(1,*)'#6#',loc(pt%val),loc(prev%val)
               deallocate(pt)
               write(1,*)'#7#',loc(pt%val),loc(prev%val)
               write(1,*)prev%val
               remove=0
         end function remove
         logical function is_present(someItem)
         integer :: someItem
         type (Item), save,pointer :: pt
             write(1,*)'#',loc(pt%val)
            is_present = .true.
         end function is_present
      end module List_module
      use List_module
      integer, parameter :: odd = 1
      integer :: tmp,  odd_cnt
      type (List) il, il2
       nullify(il%list,il%at_end)
       nullify(il2%list,il2%at_end)
          tmp = 0
          call append(il,tmp)
          tmp = 1
          call append(il,tmp)
      if (.not.is_present(odd)) then
      endif
      odd_cnt = remove(il,odd)
  print *,'pass'
      end
