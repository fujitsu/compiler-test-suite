
      program main
      structure /str/
        union
          map ; integer,dimension(10)::i4_a ; end map
          map ; integer,dimension(10)::i4_b ; end map
        end union
      end structure
      type (str) str_a
      logical*1 ,dimension(10)::l1
      logical*1 ,allocatable,dimension(:)::w_l1
      integer*4 ,dimension(10)::s_a/10*-1/
      character(len=1),allocatable,dimension(:)::chr_a
      logical*1 lflg/.false./,hflg/.false./
      pointer (pl ,l1)

      allocate (w_l1(10))
      pl = loc (w_l1(1))

      do i = 1,10
         if ( i-(i/2)*2 == 1 )then
            l1(i)   = .true.
         else
            w_l1(i) = .false.
         end if
      end do

      do i=1,2
         where ( (i == 0) .and. (l1 .eqv. .true.) )
           str_a%i4_a = 1
         elsewhere
           str_a%i4_a = 0
         end where
      end do

      do i = 1,10
         str_a%i4_b(i) = i + str_a%i4_a(i)
      end do

      where ( (str_a%i4_a == 3).or.
     c        (str_a%i4_a == 6).or.
     c        (str_a%i4_a == 9) )
         s_a = str_a%i4_a
      elsewhere
         s_a = 0
      endwhere
      deallocate (w_l1)
      allocate (chr_a(10))
      chr_a = 'a'
      where ( s_a /= 0 )
        chr_a = 'z'
      elsewhere

      endwhere
      where ( chr_a(:) == 'z' )

      elsewhere
        chr_a(:) = 'b'
      end where

      lflg =((chr_a(1).eq.'b')       .and.(chr_a(2).eq.'b').and.
     c       (.not.(chr_a(3).eq.'b')).and.(chr_a(4).eq.'b').and.
     c       (.not.(chr_a(5) /= 'b')))
      hflg =((chr_a(6).eq.'z').and.(.not.(chr_a(7).eq.'z')).and.
     c       (chr_a(8) /= 'z').and.(chr_a(9).eq.'z').and.
     c       (.not.(chr_a(10) == 'z')))

      if ( ( lflg .eqv. .true.) .and. ( hflg .eqv. .true. ) ) then
         write(6,*)'*** ok !! ***'
      else
         write(6,*)'*** ng ?? ***'
      endif
      deallocate (chr_a)
      stop
      end
