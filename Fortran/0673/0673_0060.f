      write (6,10)
   10 format('1',5x,'                 test ... b0000900'/)
      ip = 0
      call f09104 (ip)
      if (ip.ne.0 ) go to 30
      write ( 6,20 )
   20 format(21x,'b0000900     ok'/)
30    write (6 ,40 )
   40 format(6x,'end rununit')
      stop
      end
      subroutine f09104 (ip)
      implicit logical (l)
      dimension r(100),a(100),b(20),c(100),e(100),f(20)
      data r,a,b / 100*0.0, 100*1.0, 20*2.0 /,
     elx1,lx2,lx3 / 3*.true. /
      iu3= 9
      open(9,access='direct',form='formatted',recl=50)
      kv3=1
      write(iu3,10,rec=kv3)r(1),r(2),r(3),r(4),r(5),r(6),r(7),r(8),r(9),
     1r(10),r(11),r(12),r(13),r(14),r(15),r(16),r(17),r(18),r(19),r(20),
     2r(21),r(22),r(23),r(24),r(25),r(26),r(27),r(28),r(29),r(30),r(31),
     3r(32),r(33),r(34),r(35),r(36),r(37),r(38),r(39),r(40),r(41),r(42),
     4r(43),r(44),r(45),r(46),r(47),r(48),r(49),r(50),r(51),r(52),r(53),
     5r(54),r(55),r(56),r(57),r(58),r(59),r(60),r(61),r(62),r(63),r(64),
     6r(65),r(66),r(67),r(68),r(69),r(70),r(71),r(72),r(73),r(74),r(75),
     7r(76),r(77),r(78),r(79),r(80),r(81),r(82),r(83),r(84),r(85),r(86),
     8r(87),r(88),r(89),r(90),r(91),r(92),r(93),r(94),r(95),r(96),r(97),
     9r(98),r(99),r(100)
      inquire(iu3,nextrec=kv3)
      write(iu3,10,rec=kv3)a(1),a(2),a(3),a(4),a(5),a(6),a(7),a(8),a(9),
     1a(10),a(11),a(12),a(13),a(14),a(15),a(16),a(17),a(18),a(19),a(20),
     2a(21),a(22),a(23),a(24),a(25),a(26),a(27),a(28),a(29),a(30),a(31),
     3a(32),a(33),a(34),a(35),a(36),a(37),a(38),a(39),a(40),a(41),a(42),
     4a(43),a(44),a(45),a(46),a(47),a(48),a(49),a(50),a(51),a(52),a(53),
     5a(54),a(55),a(56),a(57),a(58),a(59),a(60),a(61),a(62),a(63),a(64),
     6a(65),a(66),a(67),a(68),a(69),a(70),a(71),a(72),a(73),a(74),a(75),
     7a(76),a(77),a(78),a(79),a(80),a(81),a(82),a(83),a(84),a(85),a(86),
     8a(87),a(88),a(89),a(90),a(91),a(92),a(93),a(94),a(95),a(96),a(97),
     9a(98),a(99),a(100)
      inquire(iu3,nextrec=kv3)
      write(iu3,10,rec=kv3)
     1                   b(1),b(2),b(3),b(4),b(5),b(6),b(7),b(8),b(9),
     2b(10),b(11),b(12),b(13),b(14),b(15),b(16),b(17),b(18),b(19),b(20)
      kv3=1
1000  read(iu3,10,rec=kv3) c(1),c(2),c(3),c(4),c(5),c(6),c(7),c(8),c(9),
     1c(10),c(11),c(12),c(13),c(14),c(15),c(16),c(17),c(18),c(19),c(20),
     2c(21),c(22),c(23),c(24),c(25),c(26),c(27),c(28),c(29),c(30),c(31),
     3c(32),c(33),c(34),c(35),c(36),c(37),c(38),c(39),c(40),c(41),c(42),
     4c(43),c(44),c(45),c(46),c(47),c(48),c(49),c(50),c(51),c(52),c(53),
     5c(54),c(55),c(56),c(57),c(58),c(59),c(60),c(61),c(62),c(63),c(64),
     6c(65),c(66),c(67),c(68),c(69),c(70),c(71),c(72),c(73),c(74),c(75),
     7c(76),c(77),c(78),c(79),c(80),c(81),c(82),c(83),c(84),c(85),c(86),
     8c(87),c(88),c(89),c(90),c(91),c(92),c(93),c(94),c(95),c(96),c(97),
     9c(98),c(99),c(100)
      inquire(iu3,nextrec=kv3)
      read (iu3,10,rec=kv3)
     1                    e(1),e(2),e(3),e(4),e(5),e(6),e(7),e(8),e(9),
     1e(10),e(11),e(12),e(13),e(14),e(15),e(16),e(17),e(18),e(19),e(20),
     2e(21),e(22),e(23),e(24),e(25),e(26),e(27),e(28),e(29),e(30),e(31),
     3e(32),e(33),e(34),e(35),e(36),e(37),e(38),e(39),e(40),e(41),e(42),
     4e(43),e(44),e(45),e(46),e(47),e(48),e(49),e(50),e(51),e(52),e(53),
     5e(54),e(55),e(56),e(57),e(58),e(59),e(60),e(61),e(62),e(63),e(64),
     6e(65),e(66),e(67),e(68),e(69),e(70),e(71),e(72),e(73),e(74),e(75),
     7e(76),e(77),e(78),e(79),e(80),e(81),e(82),e(83),e(84),e(85),e(86),
     8e(87),e(88),e(89),e(90),e(91),e(92),e(93),e(94),e(95),e(96),e(97),
     9e(98),e(99),e(100)
      inquire(iu3,nextrec=kv3)
      read (iu3,10,rec=kv3)
     1                   f(1),f(2),f(3),f(4),f(5),f(6),f(7),f(8),f(9),
     2f(10),f(11),f(12),f(13),f(14),f(15),f(16),f(17),f(18),f(19),f(20)
10    format(f7.1)
200   do 20 i=1,100
      lx1= lx1.and.r(i).eq.c(i)
      lx2= lx2.and.a(i).eq.e(i)
      if(lx1.and.lx2) go to 20
      go to 60
   65 write(6,25) i,r(i),c(i),a(i),e(i)
   25 format(11x,'f09104 ...',i4,'  ng', 2(10x,f7.2,' ; ',f7.2))
      go to 20
   60 if(r(i).eq.c(i).and.a(i).eq.e(i)) go to 20
      go to 65
20    continue
      do 30 i=1,20
      lx3=lx3.and.b(i).eq.f(i)
      if(lx3) go to 30
      if(b(i).eq.f(i)) go to 30
      write(6,70)i,b(i),f(i)
   70 format(11x,'f09104 ***',i4,'  ng',10x,f7.2,' ; ',f7.2)
30    continue
35    if(lx1.and.lx2.and.lx3) go to 50
      ip=ip+1
      write(6,40)
40    format(1h0,20x,'ihf09104',3x,'ng' )
50    return
      e n d
