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
	func(a,b) = min(a,b)
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
	if(func(x,y).ne.res(7)) print *,7
	x = LLONG_MIN
	y = ONE
	if(func(x,y).ne.res(8)) print *,8
	x = LLONG_MIN
	y = TWO
	if(func(x,y).ne.res(9)) print *,9
	x = LLONG_MIN
	y = MZERO
	if(func(x,y).ne.res(10)) print *,10
	x = LLONG_MIN
	y = MONE
	if(func(x,y).ne.res(11)) print *,11
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
	if(func(x,y).ne.res(21)) print *,21
	x = LLONG_MAX
	y = ONE
	if(func(x,y).ne.res(22)) print *,22
	x = LLONG_MAX
	y = TWO
	if(func(x,y).ne.res(23)) print *,23
	x = LLONG_MAX
	y = MZERO
	if(func(x,y).ne.res(24)) print *,24
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
	if(func(x,y).ne.res(35)) print *,35
	x = LLONG_MIN_PLUS_1
	y = ONE
	if(func(x,y).ne.res(36)) print *,36
	x = LLONG_MIN_PLUS_1
	y = TWO
	if(func(x,y).ne.res(37)) print *,37
	x = LLONG_MIN_PLUS_1
	y = MZERO
	if(func(x,y).ne.res(38)) print *,38
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
	if(func(x,y).ne.res(49)) print *,49
	x = LLONG_MIN_PLUS_2
	y = ONE
	if(func(x,y).ne.res(50)) print *,50
	x = LLONG_MIN_PLUS_2
	y = TWO
	if(func(x,y).ne.res(51)) print *,51
	x = LLONG_MIN_PLUS_2
	y = MZERO
	if(func(x,y).ne.res(52)) print *,52
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
	if(func(x,y).ne.res(63)) print *,63
	x = LLONG_MAX_MINUS_1
	y = ONE
	if(func(x,y).ne.res(64)) print *,64
	x = LLONG_MAX_MINUS_1
	y = TWO
	if(func(x,y).ne.res(65)) print *,65
	x = LLONG_MAX_MINUS_1
	y = MZERO
	if(func(x,y).ne.res(66)) print *,66
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
	if(func(x,y).ne.res(77)) print *,77
	x = LLONG_MAX_MINUS_2
	y = ONE
	if(func(x,y).ne.res(78)) print *,78
	x = LLONG_MAX_MINUS_2
	y = TWO
	if(func(x,y).ne.res(79)) print *,79
	x = LLONG_MAX_MINUS_2
	y = MZERO
	if(func(x,y).ne.res(80)) print *,80
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
	if(func(x,y).ne.res(91)) print *,91
	x = ZERO
	y = ONE
	if(func(x,y).ne.res(92)) print *,92
	x = ZERO
	y = TWO
	if(func(x,y).ne.res(93)) print *,93
	x = ZERO
	y = MZERO
	if(func(x,y).ne.res(94)) print *,94
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
	if(func(x,y).ne.res(105)) print *,105
	x = ONE
	y = ONE
	if(func(x,y).ne.res(106)) print *,106
	x = ONE
	y = TWO
	if(func(x,y).ne.res(107)) print *,107
	x = ONE
	y = MZERO
	if(func(x,y).ne.res(108)) print *,108
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
	if(func(x,y).ne.res(119)) print *,119
	x = TWO
	y = ONE
	if(func(x,y).ne.res(120)) print *,120
	x = TWO
	y = TWO
	if(func(x,y).ne.res(121)) print *,121
	x = TWO
	y = MZERO
	if(func(x,y).ne.res(122)) print *,122
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
	if(func(x,y).ne.res(133)) print *,133
	x = MZERO
	y = ONE
	if(func(x,y).ne.res(134)) print *,134
	x = MZERO
	y = TWO
	if(func(x,y).ne.res(135)) print *,135
	x = MZERO
	y = MZERO
	if(func(x,y).ne.res(136)) print *,136
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
	if(func(x,y).ne.res(147)) print *,147
	x = MONE
	y = ONE
	if(func(x,y).ne.res(148)) print *,148
	x = MONE
	y = TWO
	if(func(x,y).ne.res(149)) print *,149
	x = MONE
	y = MZERO
	if(func(x,y).ne.res(150)) print *,150
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
	if(func(x,y).ne.res(161)) print *,161
	x = MTWO
	y = ONE
	if(func(x,y).ne.res(162)) print *,162
	x = MTWO
	y = TWO
	if(func(x,y).ne.res(163)) print *,163
	x = MTWO
	y = MZERO
	if(func(x,y).ne.res(164)) print *,164
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
	if(func(x,y).ne.res(175)) print *,175
	x = LONG_MAX
	y = ONE
	if(func(x,y).ne.res(176)) print *,176
	x = LONG_MAX
	y = TWO
	if(func(x,y).ne.res(177)) print *,177
	x = LONG_MAX
	y = MZERO
	if(func(x,y).ne.res(178)) print *,178
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
	if(func(x,y).ne.res(189)) print *,189
	x = LONG_MIN
	y = ONE
	if(func(x,y).ne.res(190)) print *,190
	x = LONG_MIN
	y = TWO
	if(func(x,y).ne.res(191)) print *,191
	x = LONG_MIN
	y = MZERO
	if(func(x,y).ne.res(192)) print *,192
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
     +  -9223372036854775808 ,	!	15
     +  9223372036854775807 ,	!	16
     +  -9223372036854775807 ,	!	17
     +  -9223372036854775806 ,	!	18
     +  9223372036854775806 ,	!	19
     +  9223372036854775805 ,	!	20
     +  0 ,	!	21
     +  1 ,	!	22
     +  2 ,	!	23
     +  0 ,	!	24
     +  -1 ,	!	25
     +  -2 ,	!	26
     +  2147483647 ,	!	27
     +  -2147483648 ,	!	28
     +  -9223372036854775808 ,	!	29
     +  -9223372036854775807 ,	!	30
     +  -9223372036854775807 ,	!	31
     +  -9223372036854775807 ,	!	32
     +  -9223372036854775807 ,	!	33
     +  -9223372036854775807 ,	!	34
     +  -9223372036854775807 ,	!	35
     +  -9223372036854775807 ,	!	36
     +  -9223372036854775807 ,	!	37
     +  -9223372036854775807 ,	!	38
     +  -9223372036854775807 ,	!	39
     +  -9223372036854775807 ,	!	40
     +  -9223372036854775807 ,	!	41
     +  -9223372036854775807 ,	!	42
     +  -9223372036854775808 ,	!	43
     +  -9223372036854775806 ,	!	44
     +  -9223372036854775807 ,	!	45
     +  -9223372036854775806 ,	!	46
     +  -9223372036854775806 ,	!	47
     +  -9223372036854775806 ,	!	48
     +  -9223372036854775806 ,	!	49
     +  -9223372036854775806 ,	!	50
     +  -9223372036854775806 ,	!	51
     +  -9223372036854775806 ,	!	52
     +  -9223372036854775806 ,	!	53
     +  -9223372036854775806 ,	!	54
     +  -9223372036854775806 ,	!	55
     +  -9223372036854775806 ,	!	56
     +  -9223372036854775808 ,	!	57
     +  9223372036854775806 ,	!	58
     +  -9223372036854775807 ,	!	59
     +  -9223372036854775806 ,	!	60
     +  9223372036854775806 ,	!	61
     +  9223372036854775805 ,	!	62
     +  0 ,	!	63
     +  1 ,	!	64
     +  2 ,	!	65
     +  0 ,	!	66
     +  -1 ,	!	67
     +  -2 ,	!	68
     +  2147483647 ,	!	69
     +  -2147483648 ,	!	70
     +  -9223372036854775808 ,	!	71
     +  9223372036854775805 ,	!	72
     +  -9223372036854775807 ,	!	73
     +  -9223372036854775806 ,	!	74
     +  9223372036854775805 ,	!	75
     +  9223372036854775805 ,	!	76
     +  0 ,	!	77
     +  1 ,	!	78
     +  2 ,	!	79
     +  0 ,	!	80
     +  -1 ,	!	81
     +  -2 ,	!	82
     +  2147483647 ,	!	83
     +  -2147483648 ,	!	84
     +  -9223372036854775808 ,	!	85
     +  0 ,	!	86
     +  -9223372036854775807 ,	!	87
     +  -9223372036854775806 ,	!	88
     +  0 ,	!	89
     +  0 ,	!	90
     +  0 ,	!	91
     +  0 ,	!	92
     +  0 ,	!	93
     +  0 ,	!	94
     +  -1 ,	!	95
     +  -2 ,	!	96
     +  0 ,	!	97
     +  -2147483648 ,	!	98
     +  -9223372036854775808 ,	!	99
     +  1 ,	!	100
     +  -9223372036854775807 ,	!	101
     +  -9223372036854775806 ,	!	102
     +  1 ,	!	103
     +  1 ,	!	104
     +  0 ,	!	105
     +  1 ,	!	106
     +  1 ,	!	107
     +  0 ,	!	108
     +  -1 ,	!	109
     +  -2 ,	!	110
     +  1 ,	!	111
     +  -2147483648 ,	!	112
     +  -9223372036854775808 ,	!	113
     +  2 ,	!	114
     +  -9223372036854775807 ,	!	115
     +  -9223372036854775806 ,	!	116
     +  2 ,	!	117
     +  2 ,	!	118
     +  0 ,	!	119
     +  1 ,	!	120
     +  2 ,	!	121
     +  0 ,	!	122
     +  -1 ,	!	123
     +  -2 ,	!	124
     +  2 ,	!	125
     +  -2147483648 ,	!	126
     +  -9223372036854775808 ,	!	127
     +  0 ,	!	128
     +  -9223372036854775807 ,	!	129
     +  -9223372036854775806 ,	!	130
     +  0 ,	!	131
     +  0 ,	!	132
     +  0 ,	!	133
     +  0 ,	!	134
     +  0 ,	!	135
     +  0 ,	!	136
     +  -1 ,	!	137
     +  -2 ,	!	138
     +  0 ,	!	139
     +  -2147483648 ,	!	140
     +  -9223372036854775808 ,	!	141
     +  -1 ,	!	142
     +  -9223372036854775807 ,	!	143
     +  -9223372036854775806 ,	!	144
     +  -1 ,	!	145
     +  -1 ,	!	146
     +  -1 ,	!	147
     +  -1 ,	!	148
     +  -1 ,	!	149
     +  -1 ,	!	150
     +  -1 ,	!	151
     +  -2 ,	!	152
     +  -1 ,	!	153
     +  -2147483648 ,	!	154
     +  -9223372036854775808 ,	!	155
     +  -2 ,	!	156
     +  -9223372036854775807 ,	!	157
     +  -9223372036854775806 ,	!	158
     +  -2 ,	!	159
     +  -2 ,	!	160
     +  -2 ,	!	161
     +  -2 ,	!	162
     +  -2 ,	!	163
     +  -2 ,	!	164
     +  -2 ,	!	165
     +  -2 ,	!	166
     +  -2 ,	!	167
     +  -2147483648 ,	!	168
     +  -9223372036854775808 ,	!	169
     +  2147483647 ,	!	170
     +  -9223372036854775807 ,	!	171
     +  -9223372036854775806 ,	!	172
     +  2147483647 ,	!	173
     +  2147483647 ,	!	174
     +  0 ,	!	175
     +  1 ,	!	176
     +  2 ,	!	177
     +  0 ,	!	178
     +  -1 ,	!	179
     +  -2 ,	!	180
     +  2147483647 ,	!	181
     +  -2147483648 ,	!	182
     +  -9223372036854775808 ,	!	183
     +  -2147483648 ,	!	184
     +  -9223372036854775807 ,	!	185
     +  -9223372036854775806 ,	!	186
     +  -2147483648 ,	!	187
     +  -2147483648 ,	!	188
     +  -2147483648 ,	!	189
     +  -2147483648 ,	!	190
     +  -2147483648 ,	!	191
     +  -2147483648 ,	!	192
     +  -2147483648 ,	!	193
     +  -2147483648 ,	!	194
     +  -2147483648 ,	!	195
     +  -2147483648 /	!	196
	end
