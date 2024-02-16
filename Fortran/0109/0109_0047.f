
      program main
      integer  err/0/
      logical,dimension(10)::mask
      logical,allocatable,dimension(:)::w_mask
      pointer (pmask ,mask)
      character,dimension(10)::char,a_char
      integer,dimension(10)::i4a/10*0/,a_i4a
      logical,dimension(3,3,3)::a_f/27*.false./

      type str1
        sequence
        integer*2,dimension(3,3,3)::i2a
        complex*8,dimension(3,3,3)::c8a
        logical  ,dimension(3,3,3)::mask
      end type
      type (str1) :: Z
      pointer (pz ,Z)

      type str2
        integer*2,dimension(3,3,3)::i2a
        complex*8,dimension(3,3,3)::c8a
        logical  ,dimension(3,3,3)::mask/27*.false./
      end type
      type (str2) :: w_Z

      a_f(2:3:2,1:3:1,1:3:1) = .true.

      a_i4a(1:10:2) = 2
      a_i4a(2:10:2) = 1
      a_char(1:5)   = 'a'
      a_char(6:10)  = 'b'

      allocate (w_mask(10))


      w_mask(1:10:2) = .false.
      pmask          = loc (w_mask(1))

      mask(2:10:2)   = .true.

      char = ''
      where ( .not. (mask) )
        char = 'a'
        i4a  = i4a + 1
      elsewhere
        char = 'x'
        i4a  = i4a + 0
      endwhere


      where ( ( char == 'a' ) .and. ( i4a .lt. 1 ) )  char = 'z'
      i4a = i4a + 1

      where ( ( char == 'x' ) .and. ( i4a .lt. 2 ) )  char = 'b'

      call sub ( char )

      do i=1,10
         if (char(i).ne.a_char(i)) err=1
         if (i4a(i) /=  a_i4a(i))  err=1
      end do

      pz = loc (w_Z)
      do i = 1 , 3
         where ( Z%mask(i,:,:) )
         elsewhere
           Z%mask(i,:,:) = .true.
         endwhere
         where ( Z%mask(i,:,:) )
           Z%i2a(i,:,:) = 0
           Z%c8a(i,:,:) = cmplx(0)
         endwhere
         where ( Z%mask )
           Z%i2a = Z%i2a + 1 + Z%i2a
         endwhere
      end do
      do i=1,3
         where ( Z%i2a(i,:,:) == 7 )
           Z%c8a(i,:,:) = cmplx (Z%i2a(i,:,:) ,Z%i2a(i,:,:))
          elsewhere
           Z%c8a(i,:,:) = cmplx (Z%i2a(i,:,:) ,Z%i2a(i,:,:))
         endwhere
      end do

      call sub2(Z)

      do k=1,3
         do j=1,3
            do i=1,3
               if ( a_f(i,j,k) .neqv. Z%mask(i,j,k) ) err=1
            end do
         end do
      end do
      if (err==0) then
         write(6,*)'*** ok !! ***'
      else
         write(6,*)'*** ng ?? ***'
      endif
      stop
      end
     
      
      subroutine sub( char )
      character,dimension(10)::char
      character,dimension(5) ::work

      work = char(2:10:2)
      char(1:5) = char(1:9:2)
      char(6:10:1) = work

      return
      end

      subroutine sub2(Z)
      type str1
        sequence
        integer*2,dimension(3,3,3)::i2a
        complex*8,dimension(3,3,3)::c8a
        logical  ,dimension(3,3,3)::mask
      end type
      type (str1) :: Z

      do i=1,3
         where ( (Z%c8a(:,i,:) .eq. cmplx(3,3)) .or. 
     c           (Z%i2a(:,i,:) == 3) .and .
     c            mod(i,2) == 0 )
           Z%mask(:,i,:) = .TRUE.
         elsewhere
           Z%mask(:,i,:) = .false.
         endwhere
      enddo
      return
      end
