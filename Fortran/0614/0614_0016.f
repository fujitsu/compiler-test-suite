      type integer_data
        sequence
        integer*1 i01_a(5,5)
        integer*2 i02_a(5,5)
        integer*4 i04_a(5,5)
      end type integer_data
      type floating_data
        sequence
        real*4    r04_a(5,5)
        real*8    r08_a(5,5)
      end type floating_data
      type complex_data
        sequence
        complex*8   c08_a(5,5)
        complex*16  c16_a(5,5)
      end type complex_data
      type char_data
        sequence
        character*5 ch5_a(5,5)
      end type char_data
      type logical_data
        sequence
        logical*1   l01_a(5,5)
        logical*4   l04_a(5,5)
      end type logical_data
      type str_tag
        sequence
        type( integer_data) fx
        type(floating_data) fp
        type( complex_data) cx
        type(    char_data) ch
        type( logical_data) lo
      end type str_tag
      type(str_tag) str
      character cmpare*5

      data ((str%fx%i01_a(j,i),j=1,5),i=1,5)
     +          /-5,-4,-3,-2,-1, 1, 2, 3, 4, 5
     +          ,-4,-3,-2,-1, 0, 2, 3, 4, 5, 6
     +          ,-3,-1, 1, 3, 5               /
      data ((str%fx%i04_a(j,i),j=1,5),i=1,5)/25*0/
      data ((str%ch%ch5_a(i,j),j=1,5),i=1,5)
     +          /' 11  ',' 12  ',' 13  ',' 14  ',' 15  '
     +          ,' 21  ',' 22  ',' 23  ',' 24  ',' 25  '
     +          ,' 31  ',' 32  ',' 33  ',' 34  ',' 35  '
     +          ,' 41  ',' 42  ',' 43  ',' 44  ',' 45  '
     +          ,' 51  ',' 52  ',' 53  ',' 54  ',' 55  '/

      if(max(str%fx%i01_a(3,5)-1,1-str%fx%i01_a(2,5)) .gt. 0) then
        str%fx%i01_a=str%fx%i01_a+1
      else
        str%fx%i01_a=str%fx%i01_a-1
      endif
      str%fx%i02_a=str%fx%i02_a+str%fx%i01_a-str%fx%i02_a

      select case(str%fx%i02_a(4,3))
       case(:-1)
        str%fx%i02_a=abs(str%fx%i02_a)+1
       case(1:)
        str%fx%i02_a=(str%fx%i02_a*2)/(abs(str%fx%i02_a)+1)
       case default
        str%fx%i02_a=str%fx%i02_a(5:1:-1,5:1:-1)
      end select
      str%fx%i04_a=str%fx%i02_a+int(cos(real(str%fx%i04_a)))

 100  str%fx%i04_a=str%fx%i04_a+1
      if(str%fx%i04_a(5,5) .ne. 0) then
        str%fx%i04_a=str%fx%i04_a+1
        goto 100
      endif
      str%fp%r04_a=str%fx%i04_a

      do 110 i=1,10
        str%fp%r04_a=str%fp%r04_a*2.0
 110    str%fp%r04_a(5:1:-1,:)=str%fp%r04_a(5:1:-1,1:5)/2.0
      str%fp%r08_a=str%fp%r04_a(5:1:-1,:)

      do 120 while(int(str%fp%r08_a(5,5)) .ne. 0)
        str%fp%r08_a(:,:)=str%fp%r08_a(5:1:-1,5:1:-1)
 120    str%fp%r08_a=str%fp%r08_a-1
      str%cx%c08_a=cmplx(str%fp%r04_a,str%fp%r08_a)

      do 130 while(abs(str%cx%c08_a(1,5)) .eq. 0)
 130    str%cx%c08_a=str%cx%c08_a+(-4.0,4.0)
      str%cx%c16_a=cmplx(imag(str%cx%c08_a),dble(str%cx%c08_a))

      str%lo%l01_a=str%lo%l01_a .neqv. str%lo%l01_a
      call sub1(str%cx%c16_a,str%cx%c08_a,str%lo%l01_a,5)

      str%ch%ch5_a=str%ch%ch5_a(:,:)(1:0)//cmpare(str)//'***'

      write(6,*) '*** ',str%ch%ch5_a(3,2),' ***'
      stop
      end

      subroutine sub1(c16_b,c08_b,l01_b,n)
      complex*16 c16_b(n,n)
      complex*8  c08_b(n,n)
      logical*1 l01_b(n,n)
      integer n
      l01_b=c16_b .eq. cmplx(imag(c08_b),dble(c08_b))
      return
      end

      character(len=5) function cmpare(str)

      type integer_data
        sequence
        integer*1 i01_a(5,5)
        integer*2 i02_a(5,5)
        integer*4 i04_a(5,5)
      end type integer_data
      type floating_data
        sequence
        real*4      r04_a(5,5)
        real*8      r08_a(5,5)
      end type floating_data
      type complex_data
        sequence
        complex*8   c08_a(5,5)
        complex*16  c16_a(5,5)
      end type complex_data
      type char_data
        sequence
        character*5 ch5_a(5,5)
      end type char_data
      type logical_data
        sequence
        logical*1   l01_a(5,5)
        logical*4   l04_a(5,5)
      end type logical_data
      type str_tag
        sequence
        type( integer_data) fx
        type(floating_data) fp
        type( complex_data) cx
        type(    char_data) ch
        type( logical_data) lo
      end type str_tag
      type(str_tag) str
      logical*4 cmp_logical/.TRUE./

      str%lo%l04_a=
     +  str%cx%c16_a .eq. cmplx(imag(str%cx%c08_a),dble(str%cx%c08_a))
      str%lo%l04_a=str%lo%l04_a .and. str%lo%l01_a
      do i=1,5
        do j=1,5
           cmp_logical=cmp_logical .and. str%lo%l04_a(j,i)
        end do
      end do
      select case(cmp_logical)
       case(.TRUE.)
        cmpare='ok   '
       case(.FALSE.)
        cmpare='ng   '
       end select
      end
