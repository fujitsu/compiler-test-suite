      integer(kind=4)::i04a(5,5,5)/125*0/
      integer(kind=8)::i08a(5)=(/1,4,3,2,5/)
      integer(kind=4)::fun01,fun02,fun03,fun04,fun05 &
                      ,fun06,fun07,fun08,fun09,rslt(9)
                      
      do i=1,9
         select case(i)
         case(1)         
           rslt(i) = fun01(i04a,i08a,1,5,2,4)
         case(2)         
           rslt(i) = fun02()
         case(3)         
           rslt(i) = fun03()
         case(4)         
           rslt(i) = fun04()
         case(5)         
           rslt(i) = fun05()
         case(6)         
           rslt(i) = fun06()
         case(7)         
           rslt(i) = fun07()
         case(8)         
           rslt(i) = fun08()
         case(9)         
           rslt(i) = fun09()
         end select
      enddo
      if(ALL(rslt .eq. 0)) then
         write(6,*) '*** ok ***'
      else
         write(6,*) '*** ng ***'
         write(6,*) 'rslt(fun01...fun09):',rslt
      endif
      stop
      end

      integer(kind=4) function fun01(i04a,i08a,k,m,i,j) result(rslt)
      integer(kind=8),dimension(5)    ::i08a
      integer(kind=4),dimension(5,5,5)::i04a,i04b
      i04b = i04a
      do index2=k,m
         do index1=i,j
            i04b(2,index1,i08a(index2)) = 1
         enddo
      enddo
      i04a(2,i:j,i08a(k:m)) = 1
      if(ALL(i04a .eq. i04b)) then
         rslt = 0
      else
         rslt = 1
      endif
      return
      end

      integer(kind=4) function fun02() result(rslt)
      integer(kind=2),dimension(10,10)::i02a=0,i02b=0
      integer(kind=1),dimension(3)    ::i01a/3,6,9/
      do j=3,9,3
         do i=3,9,3
            i02b(i,j) = 1
         enddo
      enddo
      i02a(i01a,i01a) = 1
      if(ALL(i02a .eq. i02b)) then
         rslt = 0
      else
         rslt = 1
      endif
      return
      end

      integer(kind=4) function fun03() result(rslt)
      integer(kind=4)::i04a(10)/10*0/,i04t(10)/0,0,1,2,3,0,0,0,0,0/
      integer(kind=4)::i04b(5)/3,1,2,5,4/,i04c(3)/1,5,4/
      i04a(i04b(i04c))=(/1,2,3/)
      if(ALL(i04a .eq. i04t)) then
         rslt = 0
      else
         rslt = 1
      endif
      return
      end

      integer(kind=4) function fun04() result(rslt)
      integer(kind=4),dimension(10)::i04a=(/1,2,3,4,5,6,7,8, 9,10/) &
                                    ,i04b=(/1,2,4,4,5,7,7,8,10,10/)
      integer(kind=2),dimension( 3)::i02b/3,6,9/
      i04a(i02b) = i04a(i02b)+1
      if(ALL(i04a .eq. i04b)) then
         rslt = 0
      else
         rslt = 1
      endif
      return
      end

      integer(kind=4) function fun05() result(rslt)
      integer(kind=4),dimension(10)::i04a/1,2,3,4,5,6,7,8, 9,10/ &
                                    ,i04b/2,2,4,4,6,6,8,8,10,10/
      integer(kind=2),dimension(10)::i02a/1,2,3,4,5,6,7,8, 9,10/
      i04a(i02a(1:10:2)) = i04a(i02a(1:10:2))+1
      if(ALL(i04a .eq. i04b)) then
         rslt = 0
      else
         rslt = 1
      endif
      return
      end

      integer(kind=4) function fun06() result(rslt)
      integer(kind=4),dimension(10)::i04a/10,9,8,7,6,5,4,3,2,1/
      integer(kind=2),dimension(10)::i02a/10,9,8,7,6,5,4,3,2,1/ &
                                    ,i02b/10*11/
      i02a = i04a(i02a) + i02a
      if(ALL(i02a .eq. i02b)) then
         rslt = 0
      else
         rslt =1
      endif
      return
      end

      integer(kind=4) function fun07() result(rslt)
      logical(kind=1)::L01a(3,3)/.true. ,.false.,.true.  &
                                ,.false.,.true. ,.false. &
                                ,.true. ,.false.,.true.  /
      integer(kind=8)::i08a(3,3)/9*-1/,i08b(3)/3,2,1/,i08c(3)/1,2,3/ &
                      ,i08t(3,3)/0,1,0,1,0,1,0,1,0/      
      where (L01a)
        i08a(i08b,i08c) = 0
      elsewhere
        i08a(i08c,i08c) = 1
      end where
      if(ALL(i08a .eq. i08t)) then
         rslt = 0
      else
         rslt = 1
      endif
      return
      end

      integer(kind=4) function fun08() result(rslt)
      character(len =1)            ,dimension(2)::ch1a/2*' '/
      integer  (kind=4),allocatable,dimension(:)::i04a

      allocate(i04a(2))
      do i=1,2
         i04a(i) = i
      enddo
      ch1a(i04a) = 'z'
      if(ALL(ch1a .eq. (/'z','z'/))) then
         rslt = 0
      else
         rslt = 1
      endif
      deallocate(i04a)
      return
      end

      integer(kind=4) function fun09() result(rslt)
      character(len =1),dimension(5,5)::ch1a=' '
      logical  (kind=1),dimension(5,5)::L01a=.true.
      integer  (kind=4),dimension(5)  ::i04a/1,2,3,4,5/

      where(L01a(i04a,i04a) .eqv. .true.)
        ch1a(i04a,i04a) = 'a'
      end where
      if(ALL(ch1a .eq. 'a')) then
         rslt = 0
      else
         rslt = 1
      endif
      return
      end
