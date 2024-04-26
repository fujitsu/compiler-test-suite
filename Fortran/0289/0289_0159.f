
      program main

      write(6,*) '###### test-start ######'
      call test01
      call test02
      call test03
      call test04
      write(6,*) '###### test-end   ######'

      stop
      end


      subroutine test01
      real,dimension(10)::a,b,right_result
      real,dimension(10)::w_a
      real,allocatable,dimension(:)::w_b
      pointer (pa ,a),(pb ,b)
      data w_a/42.,99.,421.,374.,5548.,0.,100.,21.,232.,87681./
      data right_result/42.,99.,421.,374.,5548.,5*100000.0/
      logical no_good/.false./

      pa = loc (w_a(1))
      allocate (w_b(10))
      pb = loc (w_b(1))

      b(1:5)=a(1:5)
      a(3)=100000.0
      b(6:10)=a(3)

      do i=1,10
         if (b(i) .ne. right_result(i)) no_good = .true.
      enddo
      if (no_good) then
         write (6,*) '?????? test01 ng ??????'
         write (6,*) '< actual result >   ',b
         write (6,*) '< right  result >   ',right_result
         write (6,*) '?????? test01 ng ??????'
      else
         write (6,*) '****** test01 ok ******'
      endif
      deallocate (w_b)
      return
      end


      subroutine test02
      real,dimension(3,2,4)::a,right_result
      real,dimension(3,2,4)::w_a
      pointer (pa ,a)
      data w_a/3*13.,3*87.,3*468.,3*678.,3*40.,3*4.,3*514.,3*87./
      data right_result/3*13.,3*87.,
     +                  2*2197.,468.    ,2*658503.,678.,
     +                  2*102503232.,40.,2*311665752.,4.,
     +                  2*64000.,514.   ,2*64.,87./
      logical no_good/.false./

      pa = loc (w_a(1,1,1))
      a(1:2,1:2,2:4)=a(2:3,1:2,1:3)**3

      do k=1,4
         do j=1,2
            do i=1,3
               if (a(i,j,k) .ne. right_result(i,j,k)) no_good = .true.
            enddo
         enddo
      enddo
      if (no_good) then
         write (6,*) '?????? test02 ng ??????'
         write (6,*) '< actual result >   ',a
         write (6,*) '< right  result >   ',right_result
         write (6,*) '?????? test02 ng ??????'
      else
         write (6,*) '****** test02 ok ******'
      endif
      return
      end


      subroutine test03
      real,dimension(5,3)::a,b,right_result
      real,allocatable,dimension(:,:)::w_right_result
      pointer (ptr ,right_result)
      data a/3*33.,3*17.,3*621.,3*918.,3*9502./
      logical no_good/.false./


      allocate (w_right_result(5,3))
      ptr = loc(w_right_result(1,1))

      right_result = 918.
      a(1:5,1:3)=a(5,2)
      b=a(1,1)

      do j=1,3
         do i=1,5
            if (b(i,j) .ne. right_result(i,j)) no_good = .true.
         enddo
      enddo
      if (no_good) then
         write (6,*) '?????? test03 ng ??????'
         write (6,*) '< actual result >   ',b
         write (6,*) '< right  result >   ',right_result
         write (6,*) '?????? test03 ng ??????'
      else
         write (6,*) '****** test03 ok ******'
      endif
      deallocate (w_right_result)
      return
      end


      subroutine test04
      real,dimension(10,5)::a,right_result
      real,allocatable,dimension(:,:)::w_a
      pointer (pa ,a)
      data right_result/10*996.0,10*6.0,10*30.0,10*3330.0,10*65533.0/
      logical no_good/.false./


      allocate (w_a(10,5))
      w_a(:,1) = 999.0
      w_a(:,2) = 9.0
      pa = loc (w_a)
      a(:,3)  = 33.0
      a(:,4)  = 3333.0
      a(:,5)  = 65536.0


      a(:,:)=a(:,1:5)-3.


      do j=1,5
         do i=1,10
            if (a(i,j) .ne. right_result(i,j)) no_good = .true.
         enddo
      enddo
      if (no_good) then
         write (6,*) '?????? test04 ng ??????'
         write (6,*) '< actual result >   ',a
         write (6,*) '< right  result >   ',right_result
         write (6,*) '?????? test04 ng ??????'
      else
         write (6,*) '****** test04 ok ******'
      endif
      deallocate (w_a)
      return
      end
