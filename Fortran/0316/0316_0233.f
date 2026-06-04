
      integer*8 k(78)
      integer*8 i8
      parameter (i8=z'8888888811111111')

      parameter(k=(/ishftc(i8,  0,1 ),
     +              ishftc(i8,  0,16),
     +              ishftc(i8,  1,16),
     +              ishftc(i8,  7,16),
     +              ishftc(i8,  8,16),
     +              ishftc(i8, 15,16),
     +              ishftc(i8, 16,16),
     +              ishftc(i8, -1,16),
     +              ishftc(i8, -7,16),
     +              ishftc(i8, -8,16),
     +              ishftc(i8,-15,16),
     +              ishftc(i8,-16,16),
     +              ishftc(i8,-16,16),
     +              ishftc(i8,  0,32),
     +              ishftc(i8,  1,32),
     +              ishftc(i8,  7,32),
     +              ishftc(i8,  8,32),
     +              ishftc(i8, 15,32),
     +              ishftc(i8, 16,32),
     +              ishftc(i8, 31,32),
     +              ishftc(i8, 32,32),
     +              ishftc(i8, -1,32),
     +              ishftc(i8, -7,32),
     +              ishftc(i8, -8,32),
     +              ishftc(i8,-15,32),
     +              ishftc(i8,-16,32),
     +              ishftc(i8,-31,32),
     +              ishftc(i8,-32,32),
     +              ishftc(i8,  0,48),
     +              ishftc(i8,  1,48),
     +              ishftc(i8,  7,48),
     +              ishftc(i8,  8,48),
     +              ishftc(i8, 15,48),
     +              ishftc(i8, 16,48),
     +              ishftc(i8, 31,48),
     +              ishftc(i8, 32,48),
     +              ishftc(i8, 39,48),
     +              ishftc(i8, 40,48),
     +              ishftc(i8, 47,48),
     +              ishftc(i8, 48,48),
     +              ishftc(i8, -1,48),
     +              ishftc(i8, -7,48),
     +              ishftc(i8, -8,48),
     +              ishftc(i8,-15,48),
     +              ishftc(i8,-16,48),
     +              ishftc(i8,-31,48),
     +              ishftc(i8,-32,48),
     +              ishftc(i8,-39,48),
     +              ishftc(i8,-40,48),
     +              ishftc(i8,-47,48),
     +              ishftc(i8,-48,48),
     +              ishftc(i8,  0,64),
     +              ishftc(i8,  1,64),
     +              ishftc(i8,  7,64),
     +              ishftc(i8,  8,64),
     +              ishftc(i8, 15,64),
     +              ishftc(i8, 16,64),
     +              ishftc(i8, 31,64),
     +              ishftc(i8, 32,64),
     +              ishftc(i8, 39,64),
     +              ishftc(i8, 40,64),
     +              ishftc(i8, 47,64),
     +              ishftc(i8, 48,64),
     +              ishftc(i8, 63,64),
     +              ishftc(i8, 64,64),
     +              ishftc(i8, -1,64),
     +              ishftc(i8, -7,64),
     +              ishftc(i8, -8,64),
     +              ishftc(i8,-15,64),
     +              ishftc(i8,-16,64),
     +              ishftc(i8,-31,64),
     +              ishftc(i8,-32,64),
     +              ishftc(i8,-39,64),
     +              ishftc(i8,-40,64),
     +              ishftc(i8,-47,64),
     +              ishftc(i8,-48,64),
     +              ishftc(i8,-63,64),
     +              ishftc(i8,-64,64) /) )

      do i = 1,78
        call phex(i,k(i))
      enddo

      call checki8(k( 2),ishftc(i8,  0,16))
      call checki8(k( 3),ishftc(i8,  1,16))
      call checki8(k( 4),ishftc(i8,  7,16))
      call checki8(k( 5),ishftc(i8,  8,16))
      call checki8(k( 6),ishftc(i8, 15,16))
      call checki8(k( 7),ishftc(i8, 16,16))
      call checki8(k( 8),ishftc(i8, -1,16))
      call checki8(k( 9),ishftc(i8, -7,16))
      call checki8(k(10),ishftc(i8, -8,16))
      call checki8(k(11),ishftc(i8,-15,16))
      call checki8(k(12),ishftc(i8,-16,16))
      call checki8(k(13),ishftc(i8,-16,16))
      call checki8(k(14),ishftc(i8,  0,32))
      call checki8(k(15),ishftc(i8,  1,32))
      call checki8(k(16),ishftc(i8,  7,32))
      call checki8(k(17),ishftc(i8,  8,32))
      call checki8(k(18),ishftc(i8, 15,32))
      call checki8(k(19),ishftc(i8, 16,32))
      call checki8(k(20),ishftc(i8, 31,32))
      call checki8(k(21),ishftc(i8, 32,32))
      call checki8(k(22),ishftc(i8, -1,32))
      call checki8(k(23),ishftc(i8, -7,32))
      call checki8(k(24),ishftc(i8, -8,32))
      call checki8(k(25),ishftc(i8,-15,32))
      call checki8(k(26),ishftc(i8,-16,32))
      call checki8(k(27),ishftc(i8,-31,32))
      call checki8(k(28),ishftc(i8,-32,32))
      call checki8(k(29),ishftc(i8,  0,48))
      call checki8(k(30),ishftc(i8,  1,48))
      call checki8(k(31),ishftc(i8,  7,48))
      call checki8(k(32),ishftc(i8,  8,48))
      call checki8(k(33),ishftc(i8, 15,48))
      call checki8(k(34),ishftc(i8, 16,48))
      call checki8(k(35),ishftc(i8, 31,48))
      call checki8(k(36),ishftc(i8, 32,48))
      call checki8(k(37),ishftc(i8, 39,48))
      call checki8(k(38),ishftc(i8, 40,48))
      call checki8(k(39),ishftc(i8, 47,48))
      call checki8(k(40),ishftc(i8, 48,48))
      call checki8(k(41),ishftc(i8, -1,48))
      call checki8(k(42),ishftc(i8, -7,48))
      call checki8(k(43),ishftc(i8, -8,48))
      call checki8(k(44),ishftc(i8,-15,48))
      call checki8(k(45),ishftc(i8,-16,48))
      call checki8(k(46),ishftc(i8,-31,48))
      call checki8(k(47),ishftc(i8,-32,48))
      call checki8(k(48),ishftc(i8,-39,48))
      call checki8(k(49),ishftc(i8,-40,48))
      call checki8(k(50),ishftc(i8,-47,48))
      call checki8(k(51),ishftc(i8,-48,48))
      call checki8(k(52),ishftc(i8,  0,64))
      call checki8(k(53),ishftc(i8,  1,64))
      call checki8(k(54),ishftc(i8,  7,64))
      call checki8(k(55),ishftc(i8,  8,64))
      call checki8(k(56),ishftc(i8, 15,64))
      call checki8(k(57),ishftc(i8, 16,64))
      call checki8(k(58),ishftc(i8, 31,64))
      call checki8(k(59),ishftc(i8, 32,64))
      call checki8(k(60),ishftc(i8, 39,64))
      call checki8(k(61),ishftc(i8, 40,64))
      call checki8(k(62),ishftc(i8, 47,64))
      call checki8(k(63),ishftc(i8, 48,64))
      call checki8(k(64),ishftc(i8, 63,64))
      call checki8(k(65),ishftc(i8, 64,64))
      call checki8(k(66),ishftc(i8, -1,64))
      call checki8(k(67),ishftc(i8, -7,64))
      call checki8(k(68),ishftc(i8, -8,64))
      call checki8(k(69),ishftc(i8,-15,64))
      call checki8(k(70),ishftc(i8,-16,64))
      call checki8(k(71),ishftc(i8,-31,64))
      call checki8(k(72),ishftc(i8,-32,64))
      call checki8(k(73),ishftc(i8,-39,64))
      call checki8(k(74),ishftc(i8,-40,64))
      call checki8(k(75),ishftc(i8,-47,64))
      call checki8(k(76),ishftc(i8,-48,64))
      call checki8(k(77),ishftc(i8,-63,64))
      call checki8(k(78),ishftc(i8,-64,64))

      print *,'*** ok ***'
      end

      subroutine checki8(i8,i8t)
      integer*8 i8,i8t
      if (i8.ne.i8t) then
        print *,i8,i8t
        print *,'??? ng ???'
        stop 4
      endif
      end

      subroutine phex(i,i8)
      integer*8 i8
      end
