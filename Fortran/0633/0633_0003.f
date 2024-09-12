      program main
      integer,dimension(10,10)::i4_a
      integer err/0/

      m = cos(0.0) + 9
      call sub1(i4_a ,m,err)

      if ( err .eq. 0 ) then
         write(6,*)'*** ok ***'
      else
         write(6,*)'*** ng ***'
      endif
      stop
      end

      subroutine sub1(i4_a ,m,err)
      integer,dimension(m,m)::i4_a
      integer*4,dimension(10)::i4_ia1,i4_ib1
      integer*4,dimension(10)::i4_ia2,i4_ib2
      integer*4,dimension(10)::i4_ic/1,2,3,4,5,6,7,8,9,10/,pi4_a,pi4_ic
      integer,dimension(10,5)::dat/0,2,0,2,0,2,0,2,0,2,
     *                             4,0,4,0,4,0,4,0,4,0,
     *                             4,2,4,2,4,2,4,2,4,2,
     *                             4,4,4,4,4,4,4,4,4,4,
     *                             0,2,0,2,0,4,4,4,4,4/
      integer err
      pointer (p,pi4_a),(p1 ,pi4_ic)
      equivalence (i4_ia1,i4_ib1),(i4_ia2,i4_ib2)

      do i=1,10
         i4_ib1(i) = i
         i4_ia2(i) = i
      end do
      i4_a(i4_ia1 ,i4_ib2) = 0

      do i=1,5
         i4_ia1(i) = i
         i4_ib2(i) = i
      end do
      i4_a(i4_ia2(1:5) + i4_ib1(1:5) ,1)  = 2
      i4_a(1:10:2 ,i4_ia2(1+i4_ia2(2)-1:2)) = 4

      i4_a(i4_ic ,i4_ic(3)) = i4_a(i4_ic(:),i4_ic(1)) + 
     *                        i4_a(i4_ic(1:10) ,i4_ic(2))
      p = loc (i4_a(:,4))
      p1= loc (i4_ic)
      pi4_a(i4_ic) = i4_a(:,1)+i4_a(pi4_ic,3)

      i4_a(pi4_ic(1:5),5)  = i4_a(i4_ic(5:9),1)
      i4_a(pi4_ic(6:10),5) = pi4_a(i4_ic(1:5))

      do l=1,5
         do i=1,10
            if ( i4_a(i,l) /= dat(i,l)) err = 1
         end do
      end do
      return
      end
