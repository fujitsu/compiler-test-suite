
      integer*1,parameter ::minus1=-1,zero=0,one=1,two=2,three=3,four=4
      integer*2,parameter ::five=5,six=6,seven=7,eight=8,nine=9,ten=10
      integer*8,parameter ::minus2=-2,twenty=20,thirty=30,fourty=40,
     +                      hundred=100,large=z'7fffffffffffffff'
      integer, parameter,dimension(-2:22) ::
     +    i=(/selected_real_kind(P=minus2),
     +        selected_real_kind(P=minus1),
     +        selected_real_kind(P=zero),
     +        selected_real_kind(P=one),
     +        selected_real_kind(P=two),
     +        selected_real_kind(P=three),
     +        selected_real_kind(P=four),
     +        selected_real_kind(P=five),
     +        selected_real_kind(P=six),
     +        selected_real_kind(P=seven),
     +        selected_real_kind(P=eight),
     +        selected_real_kind(P=nine),
     +        selected_real_kind(P=ten),
     +        selected_real_kind(11),
     +        selected_real_kind(12),
     +        selected_real_kind(13),
     +        selected_real_kind(14),
     +        selected_real_kind(15),
     +        selected_real_kind(16),
     +        selected_real_kind(17),
     +        selected_real_kind(twenty),
     +        selected_real_kind(thirty),
     +        selected_real_kind(fourty),
     +        selected_real_kind(hundred),
     +        selected_real_kind(large) /)

      call check(i(-2),selected_real_kind(P=minus2))
      call check(i(-1),selected_real_kind(P=minus1))
      call check(i(0), selected_real_kind(P=zero))
      call check(i(1), selected_real_kind(P=one))
      call check(i(2), selected_real_kind(P=two))
      call check(i(3), selected_real_kind(P=three))
      call check(i(4), selected_real_kind(P=four))
      call check(i(5), selected_real_kind(P=five))
      call check(i(6), selected_real_kind(P=six))
      call check(i(7), selected_real_kind(P=seven))
      call check(i(8), selected_real_kind(P=eight))
      call check(i(9), selected_real_kind(P=nine))
      call check(i(10),selected_real_kind(P=ten))
      call check(i(11),selected_real_kind(11))
      call check(i(12),selected_real_kind(12))
      call check(i(13),selected_real_kind(13))
      call check(i(14),selected_real_kind(14))
      call check(i(15),selected_real_kind(15))
      call check(i(16),selected_real_kind(16))
      call check(i(17),selected_real_kind(17))
      call check(i(18),selected_real_kind(twenty))
      call check(i(19),selected_real_kind(thirty))
      call check(i(20),selected_real_kind(fourty))
      call check(i(21),selected_real_kind(hundred))
      call check(i(22),selected_real_kind(large))

      print *,'*** ok ***'
      end

      subroutine check(i,it)
      if (i.ne.it) then
        print *,'??? ng ???'
        stop 1
      endif
      end
