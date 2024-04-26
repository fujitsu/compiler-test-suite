	program main
	common /ans/res
	integer*8  res(14*14),x,y
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
	func(a,b) = a/b
!
	x = LLONG_MIN
	y = LLONG_MIN
	if(func(x,y).ne.res(1)) print *,1
	x = LLONG_MIN
	y = LLONG_MAX
	if(func(x,y).ne.res(2)) print *,2
	x = LLONG_MIN
	y = LLONG_MIN_PLUS_1
	if(func(x,y).ne.res(3)) print *,3
	x = LLONG_MIN
	y = LLONG_MIN_PLUS_2
	if(func(x,y).ne.res(4)) print *,4
	x = LLONG_MIN
	y = LLONG_MAX_MINUS_1
	if(func(x,y).ne.res(5)) print *,5
	x = LLONG_MIN
	y = LLONG_MAX_MINUS_2
	if(func(x,y).ne.res(6)) print *,6
	x = LLONG_MIN
	y = ZERO
	x = LLONG_MIN
	y = ONE
	if(func(x,y).ne.res(8)) print *,8
	x = LLONG_MIN
	y = TWO
	if(func(x,y).ne.res(9)) print *,9
	x = LLONG_MIN
	y = MZERO
	x = LLONG_MIN
	y = MONE
	x = LLONG_MIN
	y = MTWO
	if(func(x,y).ne.res(12)) print *,12
	x = LLONG_MIN
	y = LONG_MAX
	if(func(x,y).ne.res(13)) print *,13
	x = LLONG_MIN
	y = LONG_MIN
	if(func(x,y).ne.res(14)) print *,14
	x = LLONG_MAX
	y = LLONG_MIN
	if(func(x,y).ne.res(15)) print *,15
	x = LLONG_MAX
	y = LLONG_MAX
	if(func(x,y).ne.res(16)) print *,16
	x = LLONG_MAX
	y = LLONG_MIN_PLUS_1
	if(func(x,y).ne.res(17)) print *,17
	x = LLONG_MAX
	y = LLONG_MIN_PLUS_2
	if(func(x,y).ne.res(18)) print *,18
	x = LLONG_MAX
	y = LLONG_MAX_MINUS_1
	if(func(x,y).ne.res(19)) print *,19
	x = LLONG_MAX
	y = LLONG_MAX_MINUS_2
	if(func(x,y).ne.res(20)) print *,20
	x = LLONG_MAX
	y = ZERO
	x = LLONG_MAX
	y = ONE
	if(func(x,y).ne.res(22)) print *,22
	x = LLONG_MAX
	y = TWO
	if(func(x,y).ne.res(23)) print *,23
	x = LLONG_MAX
	y = MZERO
	x = LLONG_MAX
	y = MONE
	if(func(x,y).ne.res(25)) print *,25
	x = LLONG_MAX
	y = MTWO
	if(func(x,y).ne.res(26)) print *,26
	x = LLONG_MAX
	y = LONG_MAX
	if(func(x,y).ne.res(27)) print *,27
	x = LLONG_MAX
	y = LONG_MIN
	if(func(x,y).ne.res(28)) print *,28
	x = LLONG_MIN_PLUS_1
	y = LLONG_MIN
	if(func(x,y).ne.res(29)) print *,29
	x = LLONG_MIN_PLUS_1
	y = LLONG_MAX
	if(func(x,y).ne.res(30)) print *,30
	x = LLONG_MIN_PLUS_1
	y = LLONG_MIN_PLUS_1
	if(func(x,y).ne.res(31)) print *,31
	x = LLONG_MIN_PLUS_1
	y = LLONG_MIN_PLUS_2
	if(func(x,y).ne.res(32)) print *,32
	x = LLONG_MIN_PLUS_1
	y = LLONG_MAX_MINUS_1
	if(func(x,y).ne.res(33)) print *,33
	x = LLONG_MIN_PLUS_1
	y = LLONG_MAX_MINUS_2
	if(func(x,y).ne.res(34)) print *,34
	x = LLONG_MIN_PLUS_1
	y = ZERO
	x = LLONG_MIN_PLUS_1
	y = ONE
	if(func(x,y).ne.res(36)) print *,36
	x = LLONG_MIN_PLUS_1
	y = TWO
	if(func(x,y).ne.res(37)) print *,37
	x = LLONG_MIN_PLUS_1
	y = MZERO
	x = LLONG_MIN_PLUS_1
	y = MONE
	if(func(x,y).ne.res(39)) print *,39
	x = LLONG_MIN_PLUS_1
	y = MTWO
	if(func(x,y).ne.res(40)) print *,40
	x = LLONG_MIN_PLUS_1
	y = LONG_MAX
	if(func(x,y).ne.res(41)) print *,41
	x = LLONG_MIN_PLUS_1
	y = LONG_MIN
	if(func(x,y).ne.res(42)) print *,42
	x = LLONG_MIN_PLUS_2
	y = LLONG_MIN
	if(func(x,y).ne.res(43)) print *,43
	x = LLONG_MIN_PLUS_2
	y = LLONG_MAX
	if(func(x,y).ne.res(44)) print *,44
	x = LLONG_MIN_PLUS_2
	y = LLONG_MIN_PLUS_1
	if(func(x,y).ne.res(45)) print *,45
	x = LLONG_MIN_PLUS_2
	y = LLONG_MIN_PLUS_2
	if(func(x,y).ne.res(46)) print *,46
	x = LLONG_MIN_PLUS_2
	y = LLONG_MAX_MINUS_1
	if(func(x,y).ne.res(47)) print *,47
	x = LLONG_MIN_PLUS_2
	y = LLONG_MAX_MINUS_2
	if(func(x,y).ne.res(48)) print *,48
	x = LLONG_MIN_PLUS_2
	y = ZERO
	x = LLONG_MIN_PLUS_2
	y = ONE
	if(func(x,y).ne.res(50)) print *,50
	x = LLONG_MIN_PLUS_2
	y = TWO
	if(func(x,y).ne.res(51)) print *,51
	x = LLONG_MIN_PLUS_2
	y = MZERO
	x = LLONG_MIN_PLUS_2
	y = MONE
	if(func(x,y).ne.res(53)) print *,53
	x = LLONG_MIN_PLUS_2
	y = MTWO
	if(func(x,y).ne.res(54)) print *,54
	x = LLONG_MIN_PLUS_2
	y = LONG_MAX
	if(func(x,y).ne.res(55)) print *,55
	x = LLONG_MIN_PLUS_2
	y = LONG_MIN
	if(func(x,y).ne.res(56)) print *,56
	x = LLONG_MAX_MINUS_1
	y = LLONG_MIN
	if(func(x,y).ne.res(57)) print *,57
	x = LLONG_MAX_MINUS_1
	y = LLONG_MAX
	if(func(x,y).ne.res(58)) print *,58
	x = LLONG_MAX_MINUS_1
	y = LLONG_MIN_PLUS_1
	if(func(x,y).ne.res(59)) print *,59
	x = LLONG_MAX_MINUS_1
	y = LLONG_MIN_PLUS_2
	if(func(x,y).ne.res(60)) print *,60
	x = LLONG_MAX_MINUS_1
	y = LLONG_MAX_MINUS_1
	if(func(x,y).ne.res(61)) print *,61
	x = LLONG_MAX_MINUS_1
	y = LLONG_MAX_MINUS_2
	if(func(x,y).ne.res(62)) print *,62
	x = LLONG_MAX_MINUS_1
	y = ZERO
	x = LLONG_MAX_MINUS_1
	y = ONE
	if(func(x,y).ne.res(64)) print *,64
	x = LLONG_MAX_MINUS_1
	y = TWO
	if(func(x,y).ne.res(65)) print *,65
	x = LLONG_MAX_MINUS_1
	y = MZERO
	x = LLONG_MAX_MINUS_1
	y = MONE
	if(func(x,y).ne.res(67)) print *,67
	x = LLONG_MAX_MINUS_1
	y = MTWO
	if(func(x,y).ne.res(68)) print *,68
	x = LLONG_MAX_MINUS_1
	y = LONG_MAX
	if(func(x,y).ne.res(69)) print *,69
	x = LLONG_MAX_MINUS_1
	y = LONG_MIN
	if(func(x,y).ne.res(70)) print *,70
	x = LLONG_MAX_MINUS_2
	y = LLONG_MIN
	if(func(x,y).ne.res(71)) print *,71
	x = LLONG_MAX_MINUS_2
	y = LLONG_MAX
	if(func(x,y).ne.res(72)) print *,72
	x = LLONG_MAX_MINUS_2
	y = LLONG_MIN_PLUS_1
	if(func(x,y).ne.res(73)) print *,73
	x = LLONG_MAX_MINUS_2
	y = LLONG_MIN_PLUS_2
	if(func(x,y).ne.res(74)) print *,74
	x = LLONG_MAX_MINUS_2
	y = LLONG_MAX_MINUS_1
	if(func(x,y).ne.res(75)) print *,75
	x = LLONG_MAX_MINUS_2
	y = LLONG_MAX_MINUS_2
	if(func(x,y).ne.res(76)) print *,76
	x = LLONG_MAX_MINUS_2
	y = ZERO
	x = LLONG_MAX_MINUS_2
	y = ONE
	if(func(x,y).ne.res(78)) print *,78
	x = LLONG_MAX_MINUS_2
	y = TWO
	if(func(x,y).ne.res(79)) print *,79
	x = LLONG_MAX_MINUS_2
	y = MZERO
	x = LLONG_MAX_MINUS_2
	y = MONE
	if(func(x,y).ne.res(81)) print *,81
	x = LLONG_MAX_MINUS_2
	y = MTWO
	if(func(x,y).ne.res(82)) print *,82
	x = LLONG_MAX_MINUS_2
	y = LONG_MAX
	if(func(x,y).ne.res(83)) print *,83
	x = LLONG_MAX_MINUS_2
	y = LONG_MIN
	if(func(x,y).ne.res(84)) print *,84
	x = ZERO
	y = LLONG_MIN
	if(func(x,y).ne.res(85)) print *,85
	x = ZERO
	y = LLONG_MAX
	if(func(x,y).ne.res(86)) print *,86
	x = ZERO
	y = LLONG_MIN_PLUS_1
	if(func(x,y).ne.res(87)) print *,87
	x = ZERO
	y = LLONG_MIN_PLUS_2
	if(func(x,y).ne.res(88)) print *,88
	x = ZERO
	y = LLONG_MAX_MINUS_1
	if(func(x,y).ne.res(89)) print *,89
	x = ZERO
	y = LLONG_MAX_MINUS_2
	if(func(x,y).ne.res(90)) print *,90
	x = ZERO
	y = ZERO
	x = ZERO
	y = ONE
	if(func(x,y).ne.res(92)) print *,92
	x = ZERO
	y = TWO
	if(func(x,y).ne.res(93)) print *,93
	x = ZERO
	y = MZERO
	x = ZERO
	y = MONE
	if(func(x,y).ne.res(95)) print *,95
	x = ZERO
	y = MTWO
	if(func(x,y).ne.res(96)) print *,96
	x = ZERO
	y = LONG_MAX
	if(func(x,y).ne.res(97)) print *,97
	x = ZERO
	y = LONG_MIN
	if(func(x,y).ne.res(98)) print *,98
	x = ONE
	y = LLONG_MIN
	if(func(x,y).ne.res(99)) print *,99
	x = ONE
	y = LLONG_MAX
	if(func(x,y).ne.res(100)) print *,100
	x = ONE
	y = LLONG_MIN_PLUS_1
	if(func(x,y).ne.res(101)) print *,101
	x = ONE
	y = LLONG_MIN_PLUS_2
	if(func(x,y).ne.res(102)) print *,102
	x = ONE
	y = LLONG_MAX_MINUS_1
	if(func(x,y).ne.res(103)) print *,103
	x = ONE
	y = LLONG_MAX_MINUS_2
	if(func(x,y).ne.res(104)) print *,104
	x = ONE
	y = ZERO
	x = ONE
	y = ONE
	if(func(x,y).ne.res(106)) print *,106
	x = ONE
	y = TWO
	if(func(x,y).ne.res(107)) print *,107
	x = ONE
	y = MZERO
	x = ONE
	y = MONE
	if(func(x,y).ne.res(109)) print *,109
	x = ONE
	y = MTWO
	if(func(x,y).ne.res(110)) print *,110
	x = ONE
	y = LONG_MAX
	if(func(x,y).ne.res(111)) print *,111
	x = ONE
	y = LONG_MIN
	if(func(x,y).ne.res(112)) print *,112
	x = TWO
	y = LLONG_MIN
	if(func(x,y).ne.res(113)) print *,113
	x = TWO
	y = LLONG_MAX
	if(func(x,y).ne.res(114)) print *,114
	x = TWO
	y = LLONG_MIN_PLUS_1
	if(func(x,y).ne.res(115)) print *,115
	x = TWO
	y = LLONG_MIN_PLUS_2
	if(func(x,y).ne.res(116)) print *,116
	x = TWO
	y = LLONG_MAX_MINUS_1
	if(func(x,y).ne.res(117)) print *,117
	x = TWO
	y = LLONG_MAX_MINUS_2
	if(func(x,y).ne.res(118)) print *,118
	x = TWO
	y = ZERO
	x = TWO
	y = ONE
	if(func(x,y).ne.res(120)) print *,120
	x = TWO
	y = TWO
	if(func(x,y).ne.res(121)) print *,121
	x = TWO
	y = MZERO
	x = TWO
	y = MONE
	if(func(x,y).ne.res(123)) print *,123
	x = TWO
	y = MTWO
	if(func(x,y).ne.res(124)) print *,124
	x = TWO
	y = LONG_MAX
	if(func(x,y).ne.res(125)) print *,125
	x = TWO
	y = LONG_MIN
	if(func(x,y).ne.res(126)) print *,126
	x = MZERO
	y = LLONG_MIN
	if(func(x,y).ne.res(127)) print *,127
	x = MZERO
	y = LLONG_MAX
	if(func(x,y).ne.res(128)) print *,128
	x = MZERO
	y = LLONG_MIN_PLUS_1
	if(func(x,y).ne.res(129)) print *,129
	x = MZERO
	y = LLONG_MIN_PLUS_2
	if(func(x,y).ne.res(130)) print *,130
	x = MZERO
	y = LLONG_MAX_MINUS_1
	if(func(x,y).ne.res(131)) print *,131
	x = MZERO
	y = LLONG_MAX_MINUS_2
	if(func(x,y).ne.res(132)) print *,132
	x = MZERO
	y = ZERO
	x = MZERO
	y = ONE
	if(func(x,y).ne.res(134)) print *,134
	x = MZERO
	y = TWO
	if(func(x,y).ne.res(135)) print *,135
	x = MZERO
	y = MZERO
	x = MZERO
	y = MONE
	if(func(x,y).ne.res(137)) print *,137
	x = MZERO
	y = MTWO
	if(func(x,y).ne.res(138)) print *,138
	x = MZERO
	y = LONG_MAX
	if(func(x,y).ne.res(139)) print *,139
	x = MZERO
	y = LONG_MIN
	if(func(x,y).ne.res(140)) print *,140
	x = MONE
	y = LLONG_MIN
	if(func(x,y).ne.res(141)) print *,141
	x = MONE
	y = LLONG_MAX
	if(func(x,y).ne.res(142)) print *,142
	x = MONE
	y = LLONG_MIN_PLUS_1
	if(func(x,y).ne.res(143)) print *,143
	x = MONE
	y = LLONG_MIN_PLUS_2
	if(func(x,y).ne.res(144)) print *,144
	x = MONE
	y = LLONG_MAX_MINUS_1
	if(func(x,y).ne.res(145)) print *,145
	x = MONE
	y = LLONG_MAX_MINUS_2
	if(func(x,y).ne.res(146)) print *,146
	x = MONE
	y = ZERO
	x = MONE
	y = ONE
	if(func(x,y).ne.res(148)) print *,148
	x = MONE
	y = TWO
	if(func(x,y).ne.res(149)) print *,149
	x = MONE
	y = MZERO
	x = MONE
	y = MONE
	if(func(x,y).ne.res(151)) print *,151
	x = MONE
	y = MTWO
	if(func(x,y).ne.res(152)) print *,152
	x = MONE
	y = LONG_MAX
	if(func(x,y).ne.res(153)) print *,153
	x = MONE
	y = LONG_MIN
	if(func(x,y).ne.res(154)) print *,154
	x = MTWO
	y = LLONG_MIN
	if(func(x,y).ne.res(155)) print *,155
	x = MTWO
	y = LLONG_MAX
	if(func(x,y).ne.res(156)) print *,156
	x = MTWO
	y = LLONG_MIN_PLUS_1
	if(func(x,y).ne.res(157)) print *,157
	x = MTWO
	y = LLONG_MIN_PLUS_2
	if(func(x,y).ne.res(158)) print *,158
	x = MTWO
	y = LLONG_MAX_MINUS_1
	if(func(x,y).ne.res(159)) print *,159
	x = MTWO
	y = LLONG_MAX_MINUS_2
	if(func(x,y).ne.res(160)) print *,160
	x = MTWO
	y = ZERO
	x = MTWO
	y = ONE
	if(func(x,y).ne.res(162)) print *,162
	x = MTWO
	y = TWO
	if(func(x,y).ne.res(163)) print *,163
	x = MTWO
	y = MZERO
	x = MTWO
	y = MONE
	if(func(x,y).ne.res(165)) print *,165
	x = MTWO
	y = MTWO
	if(func(x,y).ne.res(166)) print *,166
	x = MTWO
	y = LONG_MAX
	if(func(x,y).ne.res(167)) print *,167
	x = MTWO
	y = LONG_MIN
	if(func(x,y).ne.res(168)) print *,168
	x = LONG_MAX
	y = LLONG_MIN
	if(func(x,y).ne.res(169)) print *,169
	x = LONG_MAX
	y = LLONG_MAX
	if(func(x,y).ne.res(170)) print *,170
	x = LONG_MAX
	y = LLONG_MIN_PLUS_1
	if(func(x,y).ne.res(171)) print *,171
	x = LONG_MAX
	y = LLONG_MIN_PLUS_2
	if(func(x,y).ne.res(172)) print *,172
	x = LONG_MAX
	y = LLONG_MAX_MINUS_1
	if(func(x,y).ne.res(173)) print *,173
	x = LONG_MAX
	y = LLONG_MAX_MINUS_2
	if(func(x,y).ne.res(174)) print *,174
	x = LONG_MAX
	y = ZERO
	x = LONG_MAX
	y = ONE
	if(func(x,y).ne.res(176)) print *,176
	x = LONG_MAX
	y = TWO
	if(func(x,y).ne.res(177)) print *,177
	x = LONG_MAX
	y = MZERO
	x = LONG_MAX
	y = MONE
	if(func(x,y).ne.res(179)) print *,179
	x = LONG_MAX
	y = MTWO
	if(func(x,y).ne.res(180)) print *,180
	x = LONG_MAX
	y = LONG_MAX
	if(func(x,y).ne.res(181)) print *,181
	x = LONG_MAX
	y = LONG_MIN
	if(func(x,y).ne.res(182)) print *,182
	x = LONG_MIN
	y = LLONG_MIN
	if(func(x,y).ne.res(183)) print *,183
	x = LONG_MIN
	y = LLONG_MAX
	if(func(x,y).ne.res(184)) print *,184
	x = LONG_MIN
	y = LLONG_MIN_PLUS_1
	if(func(x,y).ne.res(185)) print *,185
	x = LONG_MIN
	y = LLONG_MIN_PLUS_2
	if(func(x,y).ne.res(186)) print *,186
	x = LONG_MIN
	y = LLONG_MAX_MINUS_1
	if(func(x,y).ne.res(187)) print *,187
	x = LONG_MIN
	y = LLONG_MAX_MINUS_2
	if(func(x,y).ne.res(188)) print *,188
	x = LONG_MIN
	y = ZERO
	x = LONG_MIN
	y = ONE
	if(func(x,y).ne.res(190)) print *,190
	x = LONG_MIN
	y = TWO
	if(func(x,y).ne.res(191)) print *,191
	x = LONG_MIN
	y = MZERO
	x = LONG_MIN
	y = MONE
	if(func(x,y).ne.res(193)) print *,193
	x = LONG_MIN
	y = MTWO
	if(func(x,y).ne.res(194)) print *,194
	x = LONG_MIN
	y = LONG_MAX
	if(func(x,y).ne.res(195)) print *,195
	x = LONG_MIN
	y = LONG_MIN
	if(func(x,y).ne.res(196)) print *,196
	print *,' PASS '
	end
	block data
	common /ans/res
	integer*8  res(14*14)
	data res/
     +  1,	!	1
     +  -1,	!	2
     +  1,	!	3
     +  1,	!	4
     +  -1,	!	5
     +  -1,	!	6
     +  -9223372036854775808,	!	7
     +  -9223372036854775808,	!	8
     +  -4611686018427387904,	!	9
     +  -9223372036854775808,	!	10
     +  9223372036854775807,	!	11
     +  4611686018427387904,	!	12
     +  -4294967298,	!	13
     +  4294967296,	!	14
     +  0,	!	15
     +  1,	!	16
     +  -1,	!	17
     +  -1,	!	18
     +  1,	!	19
     +  1,	!	20
     +  9223372036854775807,	!	21
     +  9223372036854775807,	!	22
     +  4611686018427387903,	!	23
     +  9223372036854775807,	!	24
     +  -9223372036854775807,	!	25
     +  -4611686018427387903,	!	26
     +  4294967298,	!	27
     +  -4294967295,	!	28
     +  0,	!	29
     +  -1,	!	30
     +  1,	!	31
     +  1,	!	32
     +  -1,	!	33
     +  -1,	!	34
     +  -9223372036854775808,	!	35
     +  -9223372036854775807,	!	36
     +  -4611686018427387903,	!	37
     +  -9223372036854775808,	!	38
     +  9223372036854775807,	!	39
     +  4611686018427387903,	!	40
     +  -4294967298,	!	41
     +  4294967295,	!	42
     +  0,	!	43
     +  0,	!	44
     +  0,	!	45
     +  1,	!	46
     +  -1,	!	47
     +  -1,	!	48
     +  -9223372036854775808,	!	49
     +  -9223372036854775806,	!	50
     +  -4611686018427387903,	!	51
     +  -9223372036854775808,	!	52
     +  9223372036854775806,	!	53
     +  4611686018427387903,	!	54
     +  -4294967298,	!	55
     +  4294967295,	!	56
     +  0,	!	57
     +  0,	!	58
     +  0,	!	59
     +  -1,	!	60
     +  1,	!	61
     +  1,	!	62
     +  9223372036854775807,	!	63
     +  9223372036854775806,	!	64
     +  4611686018427387903,	!	65
     +  9223372036854775807,	!	66
     +  -9223372036854775806,	!	67
     +  -4611686018427387903,	!	68
     +  4294967298,	!	69
     +  -4294967295,	!	70
     +  0,	!	71
     +  0,	!	72
     +  0,	!	73
     +  0,	!	74
     +  0,	!	75
     +  1,	!	76
     +  9223372036854775807,	!	77
     +  9223372036854775805,	!	78
     +  4611686018427387902,	!	79
     +  9223372036854775807,	!	80
     +  -9223372036854775805,	!	81
     +  -4611686018427387902,	!	82
     +  4294967297,	!	83
     +  -4294967295,	!	84
     +  0,	!	85
     +  0,	!	86
     +  0,	!	87
     +  0,	!	88
     +  0,	!	89
     +  0,	!	90
     +  9223372036854775807,	!	91
     +  0,	!	92
     +  0,	!	93
     +  9223372036854775807,	!	94
     +  0,	!	95
     +  0,	!	96
     +  0,	!	97
     +  0,	!	98
     +  0,	!	99
     +  0,	!	100
     +  0,	!	101
     +  0,	!	102
     +  0,	!	103
     +  0,	!	104
     +  9223372036854775807,	!	105
     +  1,	!	106
     +  0,	!	107
     +  9223372036854775807,	!	108
     +  -1,	!	109
     +  0,	!	110
     +  0,	!	111
     +  0,	!	112
     +  0,	!	113
     +  0,	!	114
     +  0,	!	115
     +  0,	!	116
     +  0,	!	117
     +  0,	!	118
     +  9223372036854775807,	!	119
     +  2,	!	120
     +  1,	!	121
     +  9223372036854775807,	!	122
     +  -2,	!	123
     +  -1,	!	124
     +  0,	!	125
     +  0,	!	126
     +  0,	!	127
     +  0,	!	128
     +  0,	!	129
     +  0,	!	130
     +  0,	!	131
     +  0,	!	132
     +  9223372036854775807,	!	133
     +  0,	!	134
     +  0,	!	135
     +  9223372036854775807,	!	136
     +  0,	!	137
     +  0,	!	138
     +  0,	!	139
     +  0,	!	140
     +  0,	!	141
     +  0,	!	142
     +  0,	!	143
     +  0,	!	144
     +  0,	!	145
     +  0,	!	146
     +  -9223372036854775808,	!	147
     +  -1,	!	148
     +  0,	!	149
     +  -9223372036854775808,	!	150
     +  1,	!	151
     +  0,	!	152
     +  0,	!	153
     +  0,	!	154
     +  0,	!	155
     +  0,	!	156
     +  0,	!	157
     +  0,	!	158
     +  0,	!	159
     +  0,	!	160
     +  -9223372036854775808,	!	161
     +  -2,	!	162
     +  -1,	!	163
     +  -9223372036854775808,	!	164
     +  2,	!	165
     +  1,	!	166
     +  0,	!	167
     +  0,	!	168
     +  0,	!	169
     +  0,	!	170
     +  0,	!	171
     +  0,	!	172
     +  0,	!	173
     +  0,	!	174
     +  9223372036854775807,	!	175
     +  2147483647,	!	176
     +  1073741823,	!	177
     +  9223372036854775807,	!	178
     +  -2147483647,	!	179
     +  -1073741823,	!	180
     +  1,	!	181
     +  0,	!	182
     +  0,	!	183
     +  0,	!	184
     +  0,	!	185
     +  0,	!	186
     +  0,	!	187
     +  0,	!	188
     +  -9223372036854775808,	!	189
     +  -2147483648,	!	190
     +  -1073741824,	!	191
     +  -9223372036854775808,	!	192
     +  2147483648,	!	193
     +  1073741824,	!	194
     +  -1,	!	195
     +  1/	!	196
	end
