	program main
	common /ans/res
	integer*8  res(14*14)
	integer*8  LLONG_MIN,LLONG_MAX
	integer*8  LLONG_MIN_PLUS_1,LLONG_MIN_PLUS_2
	integer*8  LLONG_MAX_MINUS_1,LLONG_MAX_MINUS_2
	integer*8  ZERO,ONE,TWO
	integer*8  MZERO,MONE,MTWO
	integer*8  LONG_MAX,LONG_MIN
	integer*8  func,a,b
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
	func(a,b) = sign(a,b)
!
	if(func(LLONG_MIN,LLONG_MIN).ne.res(1)) print *,1
	if(func(LLONG_MIN,LLONG_MAX).ne.res(2)) print *,2
	if(func(LLONG_MIN,LLONG_MIN_PLUS_1).ne.res(3)) print *,3
	if(func(LLONG_MIN,LLONG_MIN_PLUS_2).ne.res(4)) print *,4
	if(func(LLONG_MIN,LLONG_MAX_MINUS_1).ne.res(5)) print *,5
	if(func(LLONG_MIN,LLONG_MAX_MINUS_2).ne.res(6)) print *,6
	if(func(LLONG_MIN,ZERO).ne.res(7)) print *,7
	if(func(LLONG_MIN,ONE).ne.res(8)) print *,8
	if(func(LLONG_MIN,TWO).ne.res(9)) print *,9
	if(func(LLONG_MIN,MZERO).ne.res(10)) print *,10
	if(func(LLONG_MIN,MONE).ne.res(11)) print *,11
	if(func(LLONG_MIN,MTWO).ne.res(12)) print *,12
	if(func(LLONG_MIN,LONG_MAX).ne.res(13)) print *,13
	if(func(LLONG_MIN,LONG_MIN).ne.res(14)) print *,14
	if(func(LLONG_MAX,LLONG_MIN).ne.res(15)) print *,15
	if(func(LLONG_MAX,LLONG_MAX).ne.res(16)) print *,16
	if(func(LLONG_MAX,LLONG_MIN_PLUS_1).ne.res(17)) print *,17
	if(func(LLONG_MAX,LLONG_MIN_PLUS_2).ne.res(18)) print *,18
	if(func(LLONG_MAX,LLONG_MAX_MINUS_1).ne.res(19)) print *,19
	if(func(LLONG_MAX,LLONG_MAX_MINUS_2).ne.res(20)) print *,20
	if(func(LLONG_MAX,ZERO).ne.res(21)) print *,21
	if(func(LLONG_MAX,ONE).ne.res(22)) print *,22
	if(func(LLONG_MAX,TWO).ne.res(23)) print *,23
	if(func(LLONG_MAX,MZERO).ne.res(24)) print *,24
	if(func(LLONG_MAX,MONE).ne.res(25)) print *,25
	if(func(LLONG_MAX,MTWO).ne.res(26)) print *,26
	if(func(LLONG_MAX,LONG_MAX).ne.res(27)) print *,27
	if(func(LLONG_MAX,LONG_MIN).ne.res(28)) print *,28
	if(func(LLONG_MIN_PLUS_1,LLONG_MIN).ne.res(29)) print *,29
	if(func(LLONG_MIN_PLUS_1,LLONG_MAX).ne.res(30)) print *,30
	if(func(LLONG_MIN_PLUS_1,LLONG_MIN_PLUS_1).ne.res(31)) print *,31
	if(func(LLONG_MIN_PLUS_1,LLONG_MIN_PLUS_2).ne.res(32)) print *,32
	if(func(LLONG_MIN_PLUS_1,LLONG_MAX_MINUS_1).ne.res(33)) print *,33
	if(func(LLONG_MIN_PLUS_1,LLONG_MAX_MINUS_2).ne.res(34)) print *,34
	if(func(LLONG_MIN_PLUS_1,ZERO).ne.res(35)) print *,35
	if(func(LLONG_MIN_PLUS_1,ONE).ne.res(36)) print *,36
	if(func(LLONG_MIN_PLUS_1,TWO).ne.res(37)) print *,37
	if(func(LLONG_MIN_PLUS_1,MZERO).ne.res(38)) print *,38
	if(func(LLONG_MIN_PLUS_1,MONE).ne.res(39)) print *,39
	if(func(LLONG_MIN_PLUS_1,MTWO).ne.res(40)) print *,40
	if(func(LLONG_MIN_PLUS_1,LONG_MAX).ne.res(41)) print *,41
	if(func(LLONG_MIN_PLUS_1,LONG_MIN).ne.res(42)) print *,42
	if(func(LLONG_MIN_PLUS_2,LLONG_MIN).ne.res(43)) print *,43
	if(func(LLONG_MIN_PLUS_2,LLONG_MAX).ne.res(44)) print *,44
	if(func(LLONG_MIN_PLUS_2,LLONG_MIN_PLUS_1).ne.res(45)) print *,45
	if(func(LLONG_MIN_PLUS_2,LLONG_MIN_PLUS_2).ne.res(46)) print *,46
	if(func(LLONG_MIN_PLUS_2,LLONG_MAX_MINUS_1).ne.res(47)) print *,47
	if(func(LLONG_MIN_PLUS_2,LLONG_MAX_MINUS_2).ne.res(48)) print *,48
	if(func(LLONG_MIN_PLUS_2,ZERO).ne.res(49)) print *,49
	if(func(LLONG_MIN_PLUS_2,ONE).ne.res(50)) print *,50
	if(func(LLONG_MIN_PLUS_2,TWO).ne.res(51)) print *,51
	if(func(LLONG_MIN_PLUS_2,MZERO).ne.res(52)) print *,52
	if(func(LLONG_MIN_PLUS_2,MONE).ne.res(53)) print *,53
	if(func(LLONG_MIN_PLUS_2,MTWO).ne.res(54)) print *,54
	if(func(LLONG_MIN_PLUS_2,LONG_MAX).ne.res(55)) print *,55
	if(func(LLONG_MIN_PLUS_2,LONG_MIN).ne.res(56)) print *,56
	if(func(LLONG_MAX_MINUS_1,LLONG_MIN).ne.res(57)) print *,57
	if(func(LLONG_MAX_MINUS_1,LLONG_MAX).ne.res(58)) print *,58
	if(func(LLONG_MAX_MINUS_1,LLONG_MIN_PLUS_1).ne.res(59)) print *,59
	if(func(LLONG_MAX_MINUS_1,LLONG_MIN_PLUS_2).ne.res(60)) print *,60
	if(func(LLONG_MAX_MINUS_1,LLONG_MAX_MINUS_1).ne.res(61)) print *,61
	if(func(LLONG_MAX_MINUS_1,LLONG_MAX_MINUS_2).ne.res(62)) print *,62
	if(func(LLONG_MAX_MINUS_1,ZERO).ne.res(63)) print *,63
	if(func(LLONG_MAX_MINUS_1,ONE).ne.res(64)) print *,64
	if(func(LLONG_MAX_MINUS_1,TWO).ne.res(65)) print *,65
	if(func(LLONG_MAX_MINUS_1,MZERO).ne.res(66)) print *,66
	if(func(LLONG_MAX_MINUS_1,MONE).ne.res(67)) print *,67
	if(func(LLONG_MAX_MINUS_1,MTWO).ne.res(68)) print *,68
	if(func(LLONG_MAX_MINUS_1,LONG_MAX).ne.res(69)) print *,69
	if(func(LLONG_MAX_MINUS_1,LONG_MIN).ne.res(70)) print *,70
	if(func(LLONG_MAX_MINUS_2,LLONG_MIN).ne.res(71)) print *,71
	if(func(LLONG_MAX_MINUS_2,LLONG_MAX).ne.res(72)) print *,72
	if(func(LLONG_MAX_MINUS_2,LLONG_MIN_PLUS_1).ne.res(73)) print *,73
	if(func(LLONG_MAX_MINUS_2,LLONG_MIN_PLUS_2).ne.res(74)) print *,74
	if(func(LLONG_MAX_MINUS_2,LLONG_MAX_MINUS_1).ne.res(75)) print *,75
	if(func(LLONG_MAX_MINUS_2,LLONG_MAX_MINUS_2).ne.res(76)) print *,76
	if(func(LLONG_MAX_MINUS_2,ZERO).ne.res(77)) print *,77
	if(func(LLONG_MAX_MINUS_2,ONE).ne.res(78)) print *,78
	if(func(LLONG_MAX_MINUS_2,TWO).ne.res(79)) print *,79
	if(func(LLONG_MAX_MINUS_2,MZERO).ne.res(80)) print *,80
	if(func(LLONG_MAX_MINUS_2,MONE).ne.res(81)) print *,81
	if(func(LLONG_MAX_MINUS_2,MTWO).ne.res(82)) print *,82
	if(func(LLONG_MAX_MINUS_2,LONG_MAX).ne.res(83)) print *,83
	if(func(LLONG_MAX_MINUS_2,LONG_MIN).ne.res(84)) print *,84
	if(func(ZERO,LLONG_MIN).ne.res(85)) print *,85
	if(func(ZERO,LLONG_MAX).ne.res(86)) print *,86
	if(func(ZERO,LLONG_MIN_PLUS_1).ne.res(87)) print *,87
	if(func(ZERO,LLONG_MIN_PLUS_2).ne.res(88)) print *,88
	if(func(ZERO,LLONG_MAX_MINUS_1).ne.res(89)) print *,89
	if(func(ZERO,LLONG_MAX_MINUS_2).ne.res(90)) print *,90
	if(func(ZERO,ZERO).ne.res(91)) print *,91
	if(func(ZERO,ONE).ne.res(92)) print *,92
	if(func(ZERO,TWO).ne.res(93)) print *,93
	if(func(ZERO,MZERO).ne.res(94)) print *,94
	if(func(ZERO,MONE).ne.res(95)) print *,95
	if(func(ZERO,MTWO).ne.res(96)) print *,96
	if(func(ZERO,LONG_MAX).ne.res(97)) print *,97
	if(func(ZERO,LONG_MIN).ne.res(98)) print *,98
	if(func(ONE,LLONG_MIN).ne.res(99)) print *,99
	if(func(ONE,LLONG_MAX).ne.res(100)) print *,100
	if(func(ONE,LLONG_MIN_PLUS_1).ne.res(101)) print *,101
	if(func(ONE,LLONG_MIN_PLUS_2).ne.res(102)) print *,102
	if(func(ONE,LLONG_MAX_MINUS_1).ne.res(103)) print *,103
	if(func(ONE,LLONG_MAX_MINUS_2).ne.res(104)) print *,104
	if(func(ONE,ZERO).ne.res(105)) print *,105
	if(func(ONE,ONE).ne.res(106)) print *,106
	if(func(ONE,TWO).ne.res(107)) print *,107
	if(func(ONE,MZERO).ne.res(108)) print *,108
	if(func(ONE,MONE).ne.res(109)) print *,109
	if(func(ONE,MTWO).ne.res(110)) print *,110
	if(func(ONE,LONG_MAX).ne.res(111)) print *,111
	if(func(ONE,LONG_MIN).ne.res(112)) print *,112
	if(func(TWO,LLONG_MIN).ne.res(113)) print *,113
	if(func(TWO,LLONG_MAX).ne.res(114)) print *,114
	if(func(TWO,LLONG_MIN_PLUS_1).ne.res(115)) print *,115
	if(func(TWO,LLONG_MIN_PLUS_2).ne.res(116)) print *,116
	if(func(TWO,LLONG_MAX_MINUS_1).ne.res(117)) print *,117
	if(func(TWO,LLONG_MAX_MINUS_2).ne.res(118)) print *,118
	if(func(TWO,ZERO).ne.res(119)) print *,119
	if(func(TWO,ONE).ne.res(120)) print *,120
	if(func(TWO,TWO).ne.res(121)) print *,121
	if(func(TWO,MZERO).ne.res(122)) print *,122
	if(func(TWO,MONE).ne.res(123)) print *,123
	if(func(TWO,MTWO).ne.res(124)) print *,124
	if(func(TWO,LONG_MAX).ne.res(125)) print *,125
	if(func(TWO,LONG_MIN).ne.res(126)) print *,126
	if(func(MZERO,LLONG_MIN).ne.res(127)) print *,127
	if(func(MZERO,LLONG_MAX).ne.res(128)) print *,128
	if(func(MZERO,LLONG_MIN_PLUS_1).ne.res(129)) print *,129
	if(func(MZERO,LLONG_MIN_PLUS_2).ne.res(130)) print *,130
	if(func(MZERO,LLONG_MAX_MINUS_1).ne.res(131)) print *,131
	if(func(MZERO,LLONG_MAX_MINUS_2).ne.res(132)) print *,132
	if(func(MZERO,ZERO).ne.res(133)) print *,133
	if(func(MZERO,ONE).ne.res(134)) print *,134
	if(func(MZERO,TWO).ne.res(135)) print *,135
	if(func(MZERO,MZERO).ne.res(136)) print *,136
	if(func(MZERO,MONE).ne.res(137)) print *,137
	if(func(MZERO,MTWO).ne.res(138)) print *,138
	if(func(MZERO,LONG_MAX).ne.res(139)) print *,139
	if(func(MZERO,LONG_MIN).ne.res(140)) print *,140
	if(func(MONE,LLONG_MIN).ne.res(141)) print *,141
	if(func(MONE,LLONG_MAX).ne.res(142)) print *,142
	if(func(MONE,LLONG_MIN_PLUS_1).ne.res(143)) print *,143
	if(func(MONE,LLONG_MIN_PLUS_2).ne.res(144)) print *,144
	if(func(MONE,LLONG_MAX_MINUS_1).ne.res(145)) print *,145
	if(func(MONE,LLONG_MAX_MINUS_2).ne.res(146)) print *,146
	if(func(MONE,ZERO).ne.res(147)) print *,147
	if(func(MONE,ONE).ne.res(148)) print *,148
	if(func(MONE,TWO).ne.res(149)) print *,149
	if(func(MONE,MZERO).ne.res(150)) print *,150
	if(func(MONE,MONE).ne.res(151)) print *,151
	if(func(MONE,MTWO).ne.res(152)) print *,152
	if(func(MONE,LONG_MAX).ne.res(153)) print *,153
	if(func(MONE,LONG_MIN).ne.res(154)) print *,154
	if(func(MTWO,LLONG_MIN).ne.res(155)) print *,155
	if(func(MTWO,LLONG_MAX).ne.res(156)) print *,156
	if(func(MTWO,LLONG_MIN_PLUS_1).ne.res(157)) print *,157
	if(func(MTWO,LLONG_MIN_PLUS_2).ne.res(158)) print *,158
	if(func(MTWO,LLONG_MAX_MINUS_1).ne.res(159)) print *,159
	if(func(MTWO,LLONG_MAX_MINUS_2).ne.res(160)) print *,160
	if(func(MTWO,ZERO).ne.res(161)) print *,161
	if(func(MTWO,ONE).ne.res(162)) print *,162
	if(func(MTWO,TWO).ne.res(163)) print *,163
	if(func(MTWO,MZERO).ne.res(164)) print *,164
	if(func(MTWO,MONE).ne.res(165)) print *,165
	if(func(MTWO,MTWO).ne.res(166)) print *,166
	if(func(MTWO,LONG_MAX).ne.res(167)) print *,167
	if(func(MTWO,LONG_MIN).ne.res(168)) print *,168
	if(func(LONG_MAX,LLONG_MIN).ne.res(169)) print *,169
	if(func(LONG_MAX,LLONG_MAX).ne.res(170)) print *,170
	if(func(LONG_MAX,LLONG_MIN_PLUS_1).ne.res(171)) print *,171
	if(func(LONG_MAX,LLONG_MIN_PLUS_2).ne.res(172)) print *,172
	if(func(LONG_MAX,LLONG_MAX_MINUS_1).ne.res(173)) print *,173
	if(func(LONG_MAX,LLONG_MAX_MINUS_2).ne.res(174)) print *,174
	if(func(LONG_MAX,ZERO).ne.res(175)) print *,175
	if(func(LONG_MAX,ONE).ne.res(176)) print *,176
	if(func(LONG_MAX,TWO).ne.res(177)) print *,177
	if(func(LONG_MAX,MZERO).ne.res(178)) print *,178
	if(func(LONG_MAX,MONE).ne.res(179)) print *,179
	if(func(LONG_MAX,MTWO).ne.res(180)) print *,180
	if(func(LONG_MAX,LONG_MAX).ne.res(181)) print *,181
	if(func(LONG_MAX,LONG_MIN).ne.res(182)) print *,182
	if(func(LONG_MIN,LLONG_MIN).ne.res(183)) print *,183
	if(func(LONG_MIN,LLONG_MAX).ne.res(184)) print *,184
	if(func(LONG_MIN,LLONG_MIN_PLUS_1).ne.res(185)) print *,185
	if(func(LONG_MIN,LLONG_MIN_PLUS_2).ne.res(186)) print *,186
	if(func(LONG_MIN,LLONG_MAX_MINUS_1).ne.res(187)) print *,187
	if(func(LONG_MIN,LLONG_MAX_MINUS_2).ne.res(188)) print *,188
	if(func(LONG_MIN,ZERO).ne.res(189)) print *,189
	if(func(LONG_MIN,ONE).ne.res(190)) print *,190
	if(func(LONG_MIN,TWO).ne.res(191)) print *,191
	if(func(LONG_MIN,MZERO).ne.res(192)) print *,192
	if(func(LONG_MIN,MONE).ne.res(193)) print *,193
	if(func(LONG_MIN,MTWO).ne.res(194)) print *,194
	if(func(LONG_MIN,LONG_MAX).ne.res(195)) print *,195
	if(func(LONG_MIN,LONG_MIN).ne.res(196)) print *,196
	print *,' PASS '
	end
	block data
	common /ans/res
	integer*8  res(14*14)
	data res/
     +  -9223372036854775808 ,	!	1
     +  -9223372036854775808 ,	!	2
     +  -9223372036854775808 ,	!	3
     +  -9223372036854775808 ,	!	4
     +  -9223372036854775808 ,	!	5
     +  -9223372036854775808 ,	!	6
     +  -9223372036854775808 ,	!	7
     +  -9223372036854775808 ,	!	8
     +  -9223372036854775808 ,	!	9
     +  -9223372036854775808 ,	!	10
     +  -9223372036854775808 ,	!	11
     +  -9223372036854775808 ,	!	12
     +  -9223372036854775808 ,	!	13
     +  -9223372036854775808 ,	!	14
     +  -9223372036854775807 ,	!	15
     +  9223372036854775807 ,	!	16
     +  -9223372036854775807 ,	!	17
     +  -9223372036854775807 ,	!	18
     +  9223372036854775807 ,	!	19
     +  9223372036854775807 ,	!	20
     +  9223372036854775807 ,	!	21
     +  9223372036854775807 ,	!	22
     +  9223372036854775807 ,	!	23
     +  9223372036854775807 ,	!	24
     +  -9223372036854775807 ,	!	25
     +  -9223372036854775807 ,	!	26
     +  9223372036854775807 ,	!	27
     +  -9223372036854775807 ,	!	28
     +  -9223372036854775807 ,	!	29
     +  9223372036854775807 ,	!	30
     +  -9223372036854775807 ,	!	31
     +  -9223372036854775807 ,	!	32
     +  9223372036854775807 ,	!	33
     +  9223372036854775807 ,	!	34
     +  9223372036854775807 ,	!	35
     +  9223372036854775807 ,	!	36
     +  9223372036854775807 ,	!	37
     +  9223372036854775807 ,	!	38
     +  -9223372036854775807 ,	!	39
     +  -9223372036854775807 ,	!	40
     +  9223372036854775807 ,	!	41
     +  -9223372036854775807 ,	!	42
     +  -9223372036854775806 ,	!	43
     +  9223372036854775806 ,	!	44
     +  -9223372036854775806 ,	!	45
     +  -9223372036854775806 ,	!	46
     +  9223372036854775806 ,	!	47
     +  9223372036854775806 ,	!	48
     +  9223372036854775806 ,	!	49
     +  9223372036854775806 ,	!	50
     +  9223372036854775806 ,	!	51
     +  9223372036854775806 ,	!	52
     +  -9223372036854775806 ,	!	53
     +  -9223372036854775806 ,	!	54
     +  9223372036854775806 ,	!	55
     +  -9223372036854775806 ,	!	56
     +  -9223372036854775806 ,	!	57
     +  9223372036854775806 ,	!	58
     +  -9223372036854775806 ,	!	59
     +  -9223372036854775806 ,	!	60
     +  9223372036854775806 ,	!	61
     +  9223372036854775806 ,	!	62
     +  9223372036854775806 ,	!	63
     +  9223372036854775806 ,	!	64
     +  9223372036854775806 ,	!	65
     +  9223372036854775806 ,	!	66
     +  -9223372036854775806 ,	!	67
     +  -9223372036854775806 ,	!	68
     +  9223372036854775806 ,	!	69
     +  -9223372036854775806 ,	!	70
     +  -9223372036854775805 ,	!	71
     +  9223372036854775805 ,	!	72
     +  -9223372036854775805 ,	!	73
     +  -9223372036854775805 ,	!	74
     +  9223372036854775805 ,	!	75
     +  9223372036854775805 ,	!	76
     +  9223372036854775805 ,	!	77
     +  9223372036854775805 ,	!	78
     +  9223372036854775805 ,	!	79
     +  9223372036854775805 ,	!	80
     +  -9223372036854775805 ,	!	81
     +  -9223372036854775805 ,	!	82
     +  9223372036854775805 ,	!	83
     +  -9223372036854775805 ,	!	84
     +  0 ,	!	85
     +  0 ,	!	86
     +  0 ,	!	87
     +  0 ,	!	88
     +  0 ,	!	89
     +  0 ,	!	90
     +  0 ,	!	91
     +  0 ,	!	92
     +  0 ,	!	93
     +  0 ,	!	94
     +  0 ,	!	95
     +  0 ,	!	96
     +  0 ,	!	97
     +  0 ,	!	98
     +  -1 ,	!	99
     +  1 ,	!	100
     +  -1 ,	!	101
     +  -1 ,	!	102
     +  1 ,	!	103
     +  1 ,	!	104
     +  1 ,	!	105
     +  1 ,	!	106
     +  1 ,	!	107
     +  1 ,	!	108
     +  -1 ,	!	109
     +  -1 ,	!	110
     +  1 ,	!	111
     +  -1 ,	!	112
     +  -2 ,	!	113
     +  2 ,	!	114
     +  -2 ,	!	115
     +  -2 ,	!	116
     +  2 ,	!	117
     +  2 ,	!	118
     +  2 ,	!	119
     +  2 ,	!	120
     +  2 ,	!	121
     +  2 ,	!	122
     +  -2 ,	!	123
     +  -2 ,	!	124
     +  2 ,	!	125
     +  -2 ,	!	126
     +  0 ,	!	127
     +  0 ,	!	128
     +  0 ,	!	129
     +  0 ,	!	130
     +  0 ,	!	131
     +  0 ,	!	132
     +  0 ,	!	133
     +  0 ,	!	134
     +  0 ,	!	135
     +  0 ,	!	136
     +  0 ,	!	137
     +  0 ,	!	138
     +  0 ,	!	139
     +  0 ,	!	140
     +  -1 ,	!	141
     +  1 ,	!	142
     +  -1 ,	!	143
     +  -1 ,	!	144
     +  1 ,	!	145
     +  1 ,	!	146
     +  1 ,	!	147
     +  1 ,	!	148
     +  1 ,	!	149
     +  1 ,	!	150
     +  -1 ,	!	151
     +  -1 ,	!	152
     +  1 ,	!	153
     +  -1 ,	!	154
     +  -2 ,	!	155
     +  2 ,	!	156
     +  -2 ,	!	157
     +  -2 ,	!	158
     +  2 ,	!	159
     +  2 ,	!	160
     +  2 ,	!	161
     +  2 ,	!	162
     +  2 ,	!	163
     +  2 ,	!	164
     +  -2 ,	!	165
     +  -2 ,	!	166
     +  2 ,	!	167
     +  -2 ,	!	168
     +  -2147483647 ,	!	169
     +  2147483647 ,	!	170
     +  -2147483647 ,	!	171
     +  -2147483647 ,	!	172
     +  2147483647 ,	!	173
     +  2147483647 ,	!	174
     +  2147483647 ,	!	175
     +  2147483647 ,	!	176
     +  2147483647 ,	!	177
     +  2147483647 ,	!	178
     +  -2147483647 ,	!	179
     +  -2147483647 ,	!	180
     +  2147483647 ,	!	181
     +  -2147483647 ,	!	182
     +  -2147483648 ,	!	183
     +  2147483648 ,	!	184
     +  -2147483648 ,	!	185
     +  -2147483648 ,	!	186
     +  2147483648 ,	!	187
     +  2147483648 ,	!	188
     +  2147483648 ,	!	189
     +  2147483648 ,	!	190
     +  2147483648 ,	!	191
     +  2147483648 ,	!	192
     +  -2147483648 ,	!	193
     +  -2147483648 ,	!	194
     +  2147483648 ,	!	195
     +  -2147483648 /	!	196
	end
