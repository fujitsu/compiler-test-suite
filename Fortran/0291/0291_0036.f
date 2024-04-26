	program main
	common /ans/res
	logical*4  res(14*14)
	integer*8  LLONG_MIN,LLONG_MAX
	integer*8  LLONG_MIN_PLUS_1,LLONG_MIN_PLUS_2
	integer*8  LLONG_MAX_MINUS_1,LLONG_MAX_MINUS_2
	integer*8  ZERO,ONE,TWO
	integer*8  MZERO,MONE,MTWO
	integer*8  LONG_MAX,LONG_MIN
	integer*8  a,b
	logical*4  func
	parameter(LLONG_MIN=-9223372036854775807-1)
	parameter(LLONG_MAX= 9223372036854775807)
	parameter(LLONG_MIN_PLUS_1=LLONG_MIN+1)
	parameter(LLONG_MIN_PLUS_2=LLONG_MIN+2)
	parameter(LLONG_MAX_MINUS_1=LLONG_MAX-1)
	parameter(LLONG_MAX_MINUS_2=LLONG_MAX-2)
	parameter(ZERO=0)
	parameter(ONE=1)
	parameter(TWO=2)
	parameter(MZERO=-ZERO)
	parameter(MONE=-ONE)
	parameter(MTWO=-TWO)
	parameter(LONG_MAX= 2147483647)
	parameter(LONG_MIN=-LONG_MAX-1)
	func(a,b) = a.gt.b
!
	if(func(LLONG_MIN,LLONG_MIN).neqv.res(1)) print *,1
	if(func(LLONG_MIN,LLONG_MAX).neqv.res(2)) print *,2
	if(func(LLONG_MIN,LLONG_MIN_PLUS_1).neqv.res(3)) print *,3
	if(func(LLONG_MIN,LLONG_MIN_PLUS_2).neqv.res(4)) print *,4
	if(func(LLONG_MIN,LLONG_MAX_MINUS_1).neqv.res(5)) print *,5
	if(func(LLONG_MIN,LLONG_MAX_MINUS_2).neqv.res(6)) print *,6
	if(func(LLONG_MIN,ZERO).neqv.res(7)) print *,7
	if(func(LLONG_MIN,ONE).neqv.res(8)) print *,8
	if(func(LLONG_MIN,TWO).neqv.res(9)) print *,9
	if(func(LLONG_MIN,MZERO).neqv.res(10)) print *,10
	if(func(LLONG_MIN,MONE).neqv.res(11)) print *,11
	if(func(LLONG_MIN,MTWO).neqv.res(12)) print *,12
	if(func(LLONG_MIN,LONG_MAX).neqv.res(13)) print *,13
	if(func(LLONG_MIN,LONG_MIN).neqv.res(14)) print *,14
	if(func(LLONG_MAX,LLONG_MIN).neqv.res(15)) print *,15
	if(func(LLONG_MAX,LLONG_MAX).neqv.res(16)) print *,16
	if(func(LLONG_MAX,LLONG_MIN_PLUS_1).neqv.res(17)) print *,17
	if(func(LLONG_MAX,LLONG_MIN_PLUS_2).neqv.res(18)) print *,18
	if(func(LLONG_MAX,LLONG_MAX_MINUS_1).neqv.res(19)) print *,19
	if(func(LLONG_MAX,LLONG_MAX_MINUS_2).neqv.res(20)) print *,20
	if(func(LLONG_MAX,ZERO).neqv.res(21)) print *,21
	if(func(LLONG_MAX,ONE).neqv.res(22)) print *,22
	if(func(LLONG_MAX,TWO).neqv.res(23)) print *,23
	if(func(LLONG_MAX,MZERO).neqv.res(24)) print *,24
	if(func(LLONG_MAX,MONE).neqv.res(25)) print *,25
	if(func(LLONG_MAX,MTWO).neqv.res(26)) print *,26
	if(func(LLONG_MAX,LONG_MAX).neqv.res(27)) print *,27
	if(func(LLONG_MAX,LONG_MIN).neqv.res(28)) print *,28
	if(func(LLONG_MIN_PLUS_1,LLONG_MIN).neqv.res(29)) print *,29
	if(func(LLONG_MIN_PLUS_1,LLONG_MAX).neqv.res(30)) print *,30
	if(func(LLONG_MIN_PLUS_1,LLONG_MIN_PLUS_1).neqv.res(31)) print *,31
	if(func(LLONG_MIN_PLUS_1,LLONG_MIN_PLUS_2).neqv.res(32)) print *,32
       if(func(LLONG_MIN_PLUS_1,LLONG_MAX_MINUS_1).neqv.res(33)) print *,33
       if(func(LLONG_MIN_PLUS_1,LLONG_MAX_MINUS_2).neqv.res(34)) print *,34
	if(func(LLONG_MIN_PLUS_1,ZERO).neqv.res(35)) print *,35
	if(func(LLONG_MIN_PLUS_1,ONE).neqv.res(36)) print *,36
	if(func(LLONG_MIN_PLUS_1,TWO).neqv.res(37)) print *,37
	if(func(LLONG_MIN_PLUS_1,MZERO).neqv.res(38)) print *,38
	if(func(LLONG_MIN_PLUS_1,MONE).neqv.res(39)) print *,39
	if(func(LLONG_MIN_PLUS_1,MTWO).neqv.res(40)) print *,40
	if(func(LLONG_MIN_PLUS_1,LONG_MAX).neqv.res(41)) print *,41
	if(func(LLONG_MIN_PLUS_1,LONG_MIN).neqv.res(42)) print *,42
	if(func(LLONG_MIN_PLUS_2,LLONG_MIN).neqv.res(43)) print *,43
	if(func(LLONG_MIN_PLUS_2,LLONG_MAX).neqv.res(44)) print *,44
	if(func(LLONG_MIN_PLUS_2,LLONG_MIN_PLUS_1).neqv.res(45)) print *,45
	if(func(LLONG_MIN_PLUS_2,LLONG_MIN_PLUS_2).neqv.res(46)) print *,46
       if(func(LLONG_MIN_PLUS_2,LLONG_MAX_MINUS_1).neqv.res(47)) print *,47
       if(func(LLONG_MIN_PLUS_2,LLONG_MAX_MINUS_2).neqv.res(48)) print *,48
	if(func(LLONG_MIN_PLUS_2,ZERO).neqv.res(49)) print *,49
	if(func(LLONG_MIN_PLUS_2,ONE).neqv.res(50)) print *,50
	if(func(LLONG_MIN_PLUS_2,TWO).neqv.res(51)) print *,51
	if(func(LLONG_MIN_PLUS_2,MZERO).neqv.res(52)) print *,52
	if(func(LLONG_MIN_PLUS_2,MONE).neqv.res(53)) print *,53
	if(func(LLONG_MIN_PLUS_2,MTWO).neqv.res(54)) print *,54
	if(func(LLONG_MIN_PLUS_2,LONG_MAX).neqv.res(55)) print *,55
	if(func(LLONG_MIN_PLUS_2,LONG_MIN).neqv.res(56)) print *,56
	if(func(LLONG_MAX_MINUS_1,LLONG_MIN).neqv.res(57)) print *,57
	if(func(LLONG_MAX_MINUS_1,LLONG_MAX).neqv.res(58)) print *,58
       if(func(LLONG_MAX_MINUS_1,LLONG_MIN_PLUS_1).neqv.res(59)) print *,59
       if(func(LLONG_MAX_MINUS_1,LLONG_MIN_PLUS_2).neqv.res(60)) print *,60
      if(func(LLONG_MAX_MINUS_1,LLONG_MAX_MINUS_1).neqv.res(61)) print *,61
      if(func(LLONG_MAX_MINUS_1,LLONG_MAX_MINUS_2).neqv.res(62)) print *,62
	if(func(LLONG_MAX_MINUS_1,ZERO).neqv.res(63)) print *,63
	if(func(LLONG_MAX_MINUS_1,ONE).neqv.res(64)) print *,64
	if(func(LLONG_MAX_MINUS_1,TWO).neqv.res(65)) print *,65
	if(func(LLONG_MAX_MINUS_1,MZERO).neqv.res(66)) print *,66
	if(func(LLONG_MAX_MINUS_1,MONE).neqv.res(67)) print *,67
	if(func(LLONG_MAX_MINUS_1,MTWO).neqv.res(68)) print *,68
	if(func(LLONG_MAX_MINUS_1,LONG_MAX).neqv.res(69)) print *,69
	if(func(LLONG_MAX_MINUS_1,LONG_MIN).neqv.res(70)) print *,70
	if(func(LLONG_MAX_MINUS_2,LLONG_MIN).neqv.res(71)) print *,71
	if(func(LLONG_MAX_MINUS_2,LLONG_MAX).neqv.res(72)) print *,72
        if(func(LLONG_MAX_MINUS_2,LLONG_MIN_PLUS_1).neqv.res(73)) then
          print *,73
        endif
        if(func(LLONG_MAX_MINUS_2,LLONG_MIN_PLUS_2).neqv.res(74)) then
          print *,74
        endif
	if(func(LLONG_MAX_MINUS_2,LLONG_MAX_MINUS_1).neqv.res(75)) print *,75
	if(func(LLONG_MAX_MINUS_2,LLONG_MAX_MINUS_2).neqv.res(76)) print *,76
	if(func(LLONG_MAX_MINUS_2,ZERO).neqv.res(77)) print *,77
	if(func(LLONG_MAX_MINUS_2,ONE).neqv.res(78)) print *,78
	if(func(LLONG_MAX_MINUS_2,TWO).neqv.res(79)) print *,79
	if(func(LLONG_MAX_MINUS_2,MZERO).neqv.res(80)) print *,80
	if(func(LLONG_MAX_MINUS_2,MONE).neqv.res(81)) print *,81
	if(func(LLONG_MAX_MINUS_2,MTWO).neqv.res(82)) print *,82
	if(func(LLONG_MAX_MINUS_2,LONG_MAX).neqv.res(83)) print *,83
	if(func(LLONG_MAX_MINUS_2,LONG_MIN).neqv.res(84)) print *,84
	if(func(ZERO,LLONG_MIN).neqv.res(85)) print *,85
	if(func(ZERO,LLONG_MAX).neqv.res(86)) print *,86
	if(func(ZERO,LLONG_MIN_PLUS_1).neqv.res(87)) print *,87
	if(func(ZERO,LLONG_MIN_PLUS_2).neqv.res(88)) print *,88
	if(func(ZERO,LLONG_MAX_MINUS_1).neqv.res(89)) print *,89
	if(func(ZERO,LLONG_MAX_MINUS_2).neqv.res(90)) print *,90
	if(func(ZERO,ZERO).neqv.res(91)) print *,91
	if(func(ZERO,ONE).neqv.res(92)) print *,92
	if(func(ZERO,TWO).neqv.res(93)) print *,93
	if(func(ZERO,MZERO).neqv.res(94)) print *,94
	if(func(ZERO,MONE).neqv.res(95)) print *,95
	if(func(ZERO,MTWO).neqv.res(96)) print *,96
	if(func(ZERO,LONG_MAX).neqv.res(97)) print *,97
	if(func(ZERO,LONG_MIN).neqv.res(98)) print *,98
	if(func(ONE,LLONG_MIN).neqv.res(99)) print *,99
	if(func(ONE,LLONG_MAX).neqv.res(100)) print *,100
	if(func(ONE,LLONG_MIN_PLUS_1).neqv.res(101)) print *,101
	if(func(ONE,LLONG_MIN_PLUS_2).neqv.res(102)) print *,102
	if(func(ONE,LLONG_MAX_MINUS_1).neqv.res(103)) print *,103
	if(func(ONE,LLONG_MAX_MINUS_2).neqv.res(104)) print *,104
	if(func(ONE,ZERO).neqv.res(105)) print *,105
	if(func(ONE,ONE).neqv.res(106)) print *,106
	if(func(ONE,TWO).neqv.res(107)) print *,107
	if(func(ONE,MZERO).neqv.res(108)) print *,108
	if(func(ONE,MONE).neqv.res(109)) print *,109
	if(func(ONE,MTWO).neqv.res(110)) print *,110
	if(func(ONE,LONG_MAX).neqv.res(111)) print *,111
	if(func(ONE,LONG_MIN).neqv.res(112)) print *,112
	if(func(TWO,LLONG_MIN).neqv.res(113)) print *,113
	if(func(TWO,LLONG_MAX).neqv.res(114)) print *,114
	if(func(TWO,LLONG_MIN_PLUS_1).neqv.res(115)) print *,115
	if(func(TWO,LLONG_MIN_PLUS_2).neqv.res(116)) print *,116
	if(func(TWO,LLONG_MAX_MINUS_1).neqv.res(117)) print *,117
	if(func(TWO,LLONG_MAX_MINUS_2).neqv.res(118)) print *,118
	if(func(TWO,ZERO).neqv.res(119)) print *,119
	if(func(TWO,ONE).neqv.res(120)) print *,120
	if(func(TWO,TWO).neqv.res(121)) print *,121
	if(func(TWO,MZERO).neqv.res(122)) print *,122
	if(func(TWO,MONE).neqv.res(123)) print *,123
	if(func(TWO,MTWO).neqv.res(124)) print *,124
	if(func(TWO,LONG_MAX).neqv.res(125)) print *,125
	if(func(TWO,LONG_MIN).neqv.res(126)) print *,126
	if(func(MZERO,LLONG_MIN).neqv.res(127)) print *,127
	if(func(MZERO,LLONG_MAX).neqv.res(128)) print *,128
	if(func(MZERO,LLONG_MIN_PLUS_1).neqv.res(129)) print *,129
	if(func(MZERO,LLONG_MIN_PLUS_2).neqv.res(130)) print *,130
	if(func(MZERO,LLONG_MAX_MINUS_1).neqv.res(131)) print *,131
	if(func(MZERO,LLONG_MAX_MINUS_2).neqv.res(132)) print *,132
	if(func(MZERO,ZERO).neqv.res(133)) print *,133
	if(func(MZERO,ONE).neqv.res(134)) print *,134
	if(func(MZERO,TWO).neqv.res(135)) print *,135
	if(func(MZERO,MZERO).neqv.res(136)) print *,136
	if(func(MZERO,MONE).neqv.res(137)) print *,137
	if(func(MZERO,MTWO).neqv.res(138)) print *,138
	if(func(MZERO,LONG_MAX).neqv.res(139)) print *,139
	if(func(MZERO,LONG_MIN).neqv.res(140)) print *,140
	if(func(MONE,LLONG_MIN).neqv.res(141)) print *,141
	if(func(MONE,LLONG_MAX).neqv.res(142)) print *,142
	if(func(MONE,LLONG_MIN_PLUS_1).neqv.res(143)) print *,143
	if(func(MONE,LLONG_MIN_PLUS_2).neqv.res(144)) print *,144
	if(func(MONE,LLONG_MAX_MINUS_1).neqv.res(145)) print *,145
	if(func(MONE,LLONG_MAX_MINUS_2).neqv.res(146)) print *,146
	if(func(MONE,ZERO).neqv.res(147)) print *,147
	if(func(MONE,ONE).neqv.res(148)) print *,148
	if(func(MONE,TWO).neqv.res(149)) print *,149
	if(func(MONE,MZERO).neqv.res(150)) print *,150
	if(func(MONE,MONE).neqv.res(151)) print *,151
	if(func(MONE,MTWO).neqv.res(152)) print *,152
	if(func(MONE,LONG_MAX).neqv.res(153)) print *,153
	if(func(MONE,LONG_MIN).neqv.res(154)) print *,154
	if(func(MTWO,LLONG_MIN).neqv.res(155)) print *,155
	if(func(MTWO,LLONG_MAX).neqv.res(156)) print *,156
	if(func(MTWO,LLONG_MIN_PLUS_1).neqv.res(157)) print *,157
	if(func(MTWO,LLONG_MIN_PLUS_2).neqv.res(158)) print *,158
	if(func(MTWO,LLONG_MAX_MINUS_1).neqv.res(159)) print *,159
	if(func(MTWO,LLONG_MAX_MINUS_2).neqv.res(160)) print *,160
	if(func(MTWO,ZERO).neqv.res(161)) print *,161
	if(func(MTWO,ONE).neqv.res(162)) print *,162
	if(func(MTWO,TWO).neqv.res(163)) print *,163
	if(func(MTWO,MZERO).neqv.res(164)) print *,164
	if(func(MTWO,MONE).neqv.res(165)) print *,165
	if(func(MTWO,MTWO).neqv.res(166)) print *,166
	if(func(MTWO,LONG_MAX).neqv.res(167)) print *,167
	if(func(MTWO,LONG_MIN).neqv.res(168)) print *,168
	if(func(LONG_MAX,LLONG_MIN).neqv.res(169)) print *,169
	if(func(LONG_MAX,LLONG_MAX).neqv.res(170)) print *,170
	if(func(LONG_MAX,LLONG_MIN_PLUS_1).neqv.res(171)) print *,171
	if(func(LONG_MAX,LLONG_MIN_PLUS_2).neqv.res(172)) print *,172
	if(func(LONG_MAX,LLONG_MAX_MINUS_1).neqv.res(173)) print *,173
	if(func(LONG_MAX,LLONG_MAX_MINUS_2).neqv.res(174)) print *,174
	if(func(LONG_MAX,ZERO).neqv.res(175)) print *,175
	if(func(LONG_MAX,ONE).neqv.res(176)) print *,176
	if(func(LONG_MAX,TWO).neqv.res(177)) print *,177
	if(func(LONG_MAX,MZERO).neqv.res(178)) print *,178
	if(func(LONG_MAX,MONE).neqv.res(179)) print *,179
	if(func(LONG_MAX,MTWO).neqv.res(180)) print *,180
	if(func(LONG_MAX,LONG_MAX).neqv.res(181)) print *,181
	if(func(LONG_MAX,LONG_MIN).neqv.res(182)) print *,182
	if(func(LONG_MIN,LLONG_MIN).neqv.res(183)) print *,183
	if(func(LONG_MIN,LLONG_MAX).neqv.res(184)) print *,184
	if(func(LONG_MIN,LLONG_MIN_PLUS_1).neqv.res(185)) print *,185
	if(func(LONG_MIN,LLONG_MIN_PLUS_2).neqv.res(186)) print *,186
	if(func(LONG_MIN,LLONG_MAX_MINUS_1).neqv.res(187)) print *,187
	if(func(LONG_MIN,LLONG_MAX_MINUS_2).neqv.res(188)) print *,188
	if(func(LONG_MIN,ZERO).neqv.res(189)) print *,189
	if(func(LONG_MIN,ONE).neqv.res(190)) print *,190
	if(func(LONG_MIN,TWO).neqv.res(191)) print *,191
	if(func(LONG_MIN,MZERO).neqv.res(192)) print *,192
	if(func(LONG_MIN,MONE).neqv.res(193)) print *,193
	if(func(LONG_MIN,MTWO).neqv.res(194)) print *,194
	if(func(LONG_MIN,LONG_MAX).neqv.res(195)) print *,195
	if(func(LONG_MIN,LONG_MIN).neqv.res(196)) print *,196
	print *,' PASS '
	end
	block data
	common /ans/res
	logical*4  res(14*14)
	data res/
     +  .false. ,	!	1
     +  .false. ,	!	2
     +  .false. ,	!	3
     +  .false. ,	!	4
     +  .false. ,	!	5
     +  .false. ,	!	6
     +  .false. ,	!	7
     +  .false. ,	!	8
     +  .false. ,	!	9
     +  .false. ,	!	10
     +  .false. ,	!	11
     +  .false. ,	!	12
     +  .false. ,	!	13
     +  .false. ,	!	14
     +  .true. ,	!	15
     +  .false. ,	!	16
     +  .true. ,	!	17
     +  .true. ,	!	18
     +  .true. ,	!	19
     +  .true. ,	!	20
     +  .true. ,	!	21
     +  .true. ,	!	22
     +  .true. ,	!	23
     +  .true. ,	!	24
     +  .true. ,	!	25
     +  .true. ,	!	26
     +  .true. ,	!	27
     +  .true. ,	!	28
     +  .true. ,	!	29
     +  .false. ,	!	30
     +  .false. ,	!	31
     +  .false. ,	!	32
     +  .false. ,	!	33
     +  .false. ,	!	34
     +  .false. ,	!	35
     +  .false. ,	!	36
     +  .false. ,	!	37
     +  .false. ,	!	38
     +  .false. ,	!	39
     +  .false. ,	!	40
     +  .false. ,	!	41
     +  .false. ,	!	42
     +  .true. ,	!	43
     +  .false. ,	!	44
     +  .true. ,	!	45
     +  .false. ,	!	46
     +  .false. ,	!	47
     +  .false. ,	!	48
     +  .false. ,	!	49
     +  .false. ,	!	50
     +  .false. ,	!	51
     +  .false. ,	!	52
     +  .false. ,	!	53
     +  .false. ,	!	54
     +  .false. ,	!	55
     +  .false. ,	!	56
     +  .true. ,	!	57
     +  .false. ,	!	58
     +  .true. ,	!	59
     +  .true. ,	!	60
     +  .false. ,	!	61
     +  .true. ,	!	62
     +  .true. ,	!	63
     +  .true. ,	!	64
     +  .true. ,	!	65
     +  .true. ,	!	66
     +  .true. ,	!	67
     +  .true. ,	!	68
     +  .true. ,	!	69
     +  .true. ,	!	70
     +  .true. ,	!	71
     +  .false. ,	!	72
     +  .true. ,	!	73
     +  .true. ,	!	74
     +  .false. ,	!	75
     +  .false. ,	!	76
     +  .true. ,	!	77
     +  .true. ,	!	78
     +  .true. ,	!	79
     +  .true. ,	!	80
     +  .true. ,	!	81
     +  .true. ,	!	82
     +  .true. ,	!	83
     +  .true. ,	!	84
     +  .true. ,	!	85
     +  .false. ,	!	86
     +  .true. ,	!	87
     +  .true. ,	!	88
     +  .false. ,	!	89
     +  .false. ,	!	90
     +  .false. ,	!	91
     +  .false. ,	!	92
     +  .false. ,	!	93
     +  .false. ,	!	94
     +  .true. ,	!	95
     +  .true. ,	!	96
     +  .false. ,	!	97
     +  .true. ,	!	98
     +  .true. ,	!	99
     +  .false. ,	!	100
     +  .true. ,	!	101
     +  .true. ,	!	102
     +  .false. ,	!	103
     +  .false. ,	!	104
     +  .true. ,	!	105
     +  .false. ,	!	106
     +  .false. ,	!	107
     +  .true. ,	!	108
     +  .true. ,	!	109
     +  .true. ,	!	110
     +  .false. ,	!	111
     +  .true. ,	!	112
     +  .true. ,	!	113
     +  .false. ,	!	114
     +  .true. ,	!	115
     +  .true. ,	!	116
     +  .false. ,	!	117
     +  .false. ,	!	118
     +  .true. ,	!	119
     +  .true. ,	!	120
     +  .false. ,	!	121
     +  .true. ,	!	122
     +  .true. ,	!	123
     +  .true. ,	!	124
     +  .false. ,	!	125
     +  .true. ,	!	126
     +  .true. ,	!	127
     +  .false. ,	!	128
     +  .true. ,	!	129
     +  .true. ,	!	130
     +  .false. ,	!	131
     +  .false. ,	!	132
     +  .false. ,	!	133
     +  .false. ,	!	134
     +  .false. ,	!	135
     +  .false. ,	!	136
     +  .true. ,	!	137
     +  .true. ,	!	138
     +  .false. ,	!	139
     +  .true. ,	!	140
     +  .true. ,	!	141
     +  .false. ,	!	142
     +  .true. ,	!	143
     +  .true. ,	!	144
     +  .false. ,	!	145
     +  .false. ,	!	146
     +  .false. ,	!	147
     +  .false. ,	!	148
     +  .false. ,	!	149
     +  .false. ,	!	150
     +  .false. ,	!	151
     +  .true. ,	!	152
     +  .false. ,	!	153
     +  .true. ,	!	154
     +  .true. ,	!	155
     +  .false. ,	!	156
     +  .true. ,	!	157
     +  .true. ,	!	158
     +  .false. ,	!	159
     +  .false. ,	!	160
     +  .false. ,	!	161
     +  .false. ,	!	162
     +  .false. ,	!	163
     +  .false. ,	!	164
     +  .false. ,	!	165
     +  .false. ,	!	166
     +  .false. ,	!	167
     +  .true. ,	!	168
     +  .true. ,	!	169
     +  .false. ,	!	170
     +  .true. ,	!	171
     +  .true. ,	!	172
     +  .false. ,	!	173
     +  .false. ,	!	174
     +  .true. ,	!	175
     +  .true. ,	!	176
     +  .true. ,	!	177
     +  .true. ,	!	178
     +  .true. ,	!	179
     +  .true. ,	!	180
     +  .false. ,	!	181
     +  .true. ,	!	182
     +  .true. ,	!	183
     +  .false. ,	!	184
     +  .true. ,	!	185
     +  .true. ,	!	186
     +  .false. ,	!	187
     +  .false. ,	!	188
     +  .false. ,	!	189
     +  .false. ,	!	190
     +  .false. ,	!	191
     +  .false. ,	!	192
     +  .false. ,	!	193
     +  .false. ,	!	194
     +  .false. ,	!	195
     +  .false. /	!	196
	end
