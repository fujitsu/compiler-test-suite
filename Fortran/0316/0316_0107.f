
      integer*1,parameter ::minus1=-1,zero=0,one=1,two=2,three=3,four=4
      integer*2,parameter ::five=5,six=6,seven=7,eight=8,nine=9,ten=10
      integer*8,parameter ::minus2=-2,fourty=40,hundred=100,
     +                     threehundred=300,fivehundred=500,
     +                     thousand=1000,threethousand=3000,
     +                     fourthousand=4000,fivethousand=5000,
     +                     tenthousand=10000,million=1000000,
     +                     large=z'7fffffffffffffff'
      integer, parameter,dimension(-2:22) ::
     +    i=(/selected_real_kind(R=minus2),
     +        selected_real_kind(R=minus1),
     +        selected_real_kind(R=zero),
     +        selected_real_kind(R=one),
     +        selected_real_kind(R=two),
     +        selected_real_kind(R=three),
     +        selected_real_kind(R=four),
     +        selected_real_kind(R=five),
     +        selected_real_kind(R=six),
     +        selected_real_kind(R=seven),
     +        selected_real_kind(R=eight),
     +        selected_real_kind(R=nine),
     +        selected_real_kind(R=ten),
     +        selected_real_kind(R=11),
     +        selected_real_kind(R=fourty),
     +        selected_real_kind(R=hundred),
     +        selected_real_kind(R=threehundred),
     +        selected_real_kind(R=fivehundred),
     +        selected_real_kind(R=thousand),
     +        selected_real_kind(R=threethousand),
     +        selected_real_kind(R=fourthousand),
     +        selected_real_kind(R=fivethousand),
     +        selected_real_kind(R=tenthousand),
     +        selected_real_kind(R=million),
     +        selected_real_kind(R=large) /)

      call check(i(-2),selected_real_kind(R=minus2))
      call check(i(-1),selected_real_kind(R=minus1))
      call check(i(0), selected_real_kind(R=zero))
      call check(i(1), selected_real_kind(R=one))
      call check(i(2), selected_real_kind(R=two))
      call check(i(3), selected_real_kind(R=three))
      call check(i(4), selected_real_kind(R=four))
      call check(i(5), selected_real_kind(R=five))
      call check(i(6), selected_real_kind(R=six))
      call check(i(7), selected_real_kind(R=seven))
      call check(i(8), selected_real_kind(R=eight))
      call check(i(9), selected_real_kind(R=nine))
      call check(i(10),selected_real_kind(R=ten))
      call check(i(11),selected_real_kind(R=11))
      call check(i(12),selected_real_kind(R=fourty))
      call check(i(13),selected_real_kind(R=hundred))
      call check(i(14),selected_real_kind(R=threehundred))
      call check(i(15),selected_real_kind(R=fivehundred))
      call check(i(16),selected_real_kind(R=thousand))
      call check(i(17),selected_real_kind(R=threethousand))
      call check(i(18),selected_real_kind(R=fourthousand))
      call check(i(19),selected_real_kind(R=fivethousand))
      call check(i(20),selected_real_kind(R=tenthousand))
      call check(i(21),selected_real_kind(R=million))
      call check(i(22),selected_real_kind(R=large))

      print *,'*** ok ***'
      end

      subroutine check(i,it)
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
