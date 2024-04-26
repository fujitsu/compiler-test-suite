
      module project
      type entry
      character*10 name
      logical*4 sex
      integer*4 index
      type(entry),pointer :: next
      end type entry
      type(entry),pointer :: first,current
      integer N
      parameter (N=17)
      integer NW
      parameter (NW=2)
      integer NP
      parameter (NP=10)
      character*10 person(N)
      common /ncom/person
      character*10 kind1(NW)
      common /wcom/kind1
      end module project

      module mod
      use project

      contains
      subroutine all_print
      type(entry),pointer :: pnext

      pnext=>first
      print *,'--- project menber ---'
      m_loop1: do 200 while (associated(pnext))
         print *,pnext%index,pnext%name
      pnext => pnext%next
 200  end do m_loop1
      print *,'----------------------'

      entry kind1_print
      pnext=>first
      print *,'--- project kind1 ---'
      m_loop2: do 300 while (associated(pnext))
      if (pnext%sex) then
         print *,pnext%index,pnext%name
      endif
      pnext => pnext%next
 300  end do m_loop2
      print *,'----------------------'

      end subroutine all_print
      end module mod

      program main
      use mod

      call set_data

      call replace_data

      call sort_data

      print *,'******** result ********'
      call all_print

      call kind1_print
      contains
      subroutine set_data

      sub_loop1: do 10 i=1,N
      allocate(current)
      current%name = person(i)
      current%sex = .false.
      sub_loop1_sub: do 5 j=1,NW
      if (kind1(j).eq.person(i)) then
         current%sex = .true.
      endif
 5    end do sub_loop1_sub
      current%index = i
      if (associated(first)) then
         current%next => first
      else
         nullify(current%next)
      endif
      first=>current
 10   end do sub_loop1

      call print_project

      end subroutine set_data

      subroutine replace_data
      type(entry),pointer :: cur, prv
      type(entry),pointer :: wmen1, wmen2
      integer count

      count = 1
      cur=>first
      nullify(prv)
      rep_loop1: do 50 while (associated(cur))
      if (cur%sex) then
         if (.not.associated(prv)) then
            first=>cur%next
         else
            prv%next=>cur%next
         endif
         if (count.eq.1) then
            wmen1=>cur
            count=count+1
         else
            wmen2=>cur
         endif
      endif
      prv=>cur
      cur=>cur%next
 50   end do rep_loop1
      
      prv%next=>wmen1
      wmen1%next=>wmen2
      nullify(wmen2%next)
      call print_project

      end subroutine replace_data

      subroutine sort_data
      type(entry),pointer :: dummy1,dummy2,dummy3,end_data

      nullify(end_data)
      sub2_loop1: do 30 while (.not.associated(first%next,end_data))
      dummy1=>first
      dummy2=>dummy1%next
      sub2_loop2: do 40 while (associated(dummy2)
     +.and.(.not.associated(end_data,dummy2)))
      if (dummy1%index > dummy2%index) then
         dummy1%next=>dummy2%next
         dummy2%next=>dummy1
         if (associated(dummy1,first)) then
            first=>dummy2
         else
            dummy3%next=>dummy2
         endif
         dummy3=>dummy2
         dummy2=>dummy1%next
      else
         if (.not.associated(dummy1,first)) then
            dummy3=>dummy3%next
         else
            dummy3=>dummy1
         endif
         dummy1=>dummy2
         dummy2=>dummy2%next
      endif
 40   end do sub2_loop2
      end_data=>dummy1
 30   end do sub2_loop1

      call print_project

      end subroutine sort_data

      end program main

      subroutine print_project
      use project
      type(entry),pointer :: pnext

      pnext=>first
      print *,'--- project person ---'
      loop: do 100 while (associated(pnext))
      if (pnext%sex) then
         print *,pnext%index,pnext%name,'(kind1)'
      else
         print *,pnext%index,pnext%name
      endif
      pnext => pnext%next
 100  end do loop
      print *,'----------------------'

      end subroutine print_project

      block data
      character*10 person(17)
      common /ncom/person
      character*10 kind1(2)
      common /wcom/kind1

      data person/'member0001','member0002','member0003','member0004',
     +'member0005',
     +'member0006','member0007','member0008','member0009','member0010',
     +'member0011',
     +'member0012','member0013','member0014','member0015','member0016',
     +'member0017'/

      data kind1/'member0013','member0016'/

      end
