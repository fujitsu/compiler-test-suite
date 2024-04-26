      program nrgl03
      logical test1 ,test2 ,test3 ,test4
      logical test5 ,test6 ,test7 ,test8
      logical test9 ,test10,test11,test12
      logical test13,test14
      logical           flag
      common /com/      flag
      flag = .true.
      call check( test1() ,1 )
      call check( test2() ,2 )
      call check( test3() ,3 )
      call check( test4() ,4 )
      call check( test5() ,5 )
      call check( test6() ,6 )
      call check( test7() ,7 )
      call check( test8() ,8 )
      call check( test9() ,9 )
      call check( test10() ,10 )
      call check( test11() ,11 )
      call check( test12() ,12 )
      call check( test13() ,13 )
      call check( test14() ,14 )
      if( flag ) then
        write( 6,* ) '********* ok ********'
      endif
      stop
      end
*
      logical function test1()
      integer i,n
      n=0
      do 1 i=1,10
        n=n+i
        if(i.eq.1000) goto 221
1     continue
221   continue
      test1= n.eq.55
      return
      end
*
      logical function test2()
      integer i,n
      n=0
      do 1 i=21,22
        n=n+i
        if( n.eq.1000 ) goto 2
1     continue
2     continue
      test2= n.eq.43
      return
      end
*
      logical function test3()
      integer i,n
      n=0
      do 1 i=-1,1,1
        n=n+i
        if(n.eq.20) then
          goto 331
        endif
1     continue
331   continue
      test3= n.eq.0
      return
      end
*
      logical function test4()
      integer i,n
      n=0
      do 1 i=5,1,-1
        n=n+i
        if(n.eq.20) then
          goto 2
        endif
1     continue
2     continue
      test4 = n.eq.15
      return
      end
*
      logical function test5()
      integer i,n
      n=-65
      do 1 i=1,10
        n=n+i
        if(n.ne.20) then
          n=n+1
        else
          goto 441
        endif
1     continue
441   continue
      test5 = n.eq.0
      return
      end
*
      logical function test6()
      integer i,n
      n=0
      do 1 i=1,10
        n=n+i
        if(n.ne.20) then
          n=n+1
        else
          goto 2
        endif
1     continue
2     continue
      test6=n.eq.65
      return
      end
*
      logical function test7()
      integer i,n
      n=0
      do 1 i=1,10
        n=n+i
        if(n-100)10,20,30
1     continue
      n=1+n
10    continue
      n=1+n
20    continue
      n=1+n
30    continue
      n=1+n
      test7 = n.eq.4
      return
      end
*
      logical function test8()
      n=0
      do i=0,20
        select case (i)
          case(1)
            n=n+1
          case(2)
            n=n+2
          case(3)
            cycle
          case(4)
            exit
          case default
            n=n-1
        end select
      enddo
      test8=n.eq.2
      return
      end
*
      logical function test9()
      n=0
      do 1 i=1,20
        n=n+i
        goto 100
1     continue
100   continue
      test9 = n .eq. 1
      return
      end
*
      logical function test10()
      n=2
      do 1 i=1,20
        n=n+i
        goto 2
1     continue
2     continue
      test10 =3.eq.n
      return
      end
*
      logical function test11()
      n=1
      do 1 i=1,20
        n=n+i
        goto(110,120,130) n
1     continue
110   continue
      n=1+n
120   continue
      n=1+n
130   continue
      n=1+n
      test11 = n.eq.4
      return
      end
*
      logical function test12()
      integer i,n,l
      call getnum(i)
      if( i.eq.1 ) then
        assign 210 to l
      else if( i.eq.2 ) then
        assign 220 to l
      else
        assign 230 to l
      endif
      n=1
      do  1i=1,20
        n=n+i
        goto l,(210,220,230)
1     continue
210   continue
      n=1+n
220   continue
      n=1+n
230   continue
      n=1+n
      test12 = 5.eq.n
      return
      end
*
      logical function test13()
      n=0
      do 1 i=1,20
        n=n+i
        call sub1(*310,*320,*330)
1     continue
310   continue
      n=1+n
320   continue
      n=1+n
330   continue
      n=1+n
      test13 = n.eq.3
      return
      end
*
      logical function test14()
      n=0
      do 1 i=1,10
        n=n+i
        if( n.eq.1000) stop
1     continue
      test14 = n.eq.55
      return
      end
*
      subroutine sub1(*,*,*)
      call getnum(n)
      do 2222 i=1,10
        n=n+i
        if( n.eq.1000) return n-1000
2222  continue
      return mod(n,3)
      end

      subroutine check( l , i )
      logical           l
      logical           flag
      common /com/      flag
      if( .not.l ) then
        write( 6,* ) ' ng ',i
        flag = .false.
      endif
      return
      end
*
      subroutine getnum(i)
      integer           i
      i=1
      return
      end
