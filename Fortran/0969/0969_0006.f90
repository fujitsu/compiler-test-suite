intrinsic :: cshift

integer(kind =  1) :: ii01_01, ii01_02(1)
integer(kind =  2) :: ii02_01, ii02_02(1)
integer(kind =  4) :: ii04_01, ii04_02(1)
integer(kind =  8) :: ii08_01, ii08_02(1)

real   (kind =  4) :: rr04_01, rr04_02(1)
real   (kind =  8) :: rr08_01, rr08_02(1)
real   (kind = 16) :: rr16_01, rr16_02(1)

complex(kind =  4) :: cc04_01, cc04_02(1)
complex(kind =  8) :: cc08_01, cc08_02(1)
complex(kind = 16) :: cc16_01, cc16_02(1)

ii01_01 = 1
ii02_01 = 2
ii04_01 = 4
ii08_01 = 8

ii01_02 = ii01_01
ii02_02 = ii02_01
ii04_02 = ii04_01
ii08_02 = ii08_01

rr04_01 =  4.0
rr08_01 =  8.0
rr16_01 = 16.0

rr04_02 = rr04_01
rr08_02 = rr08_01
rr16_02 = rr16_01

cc04_01 = ( 4.0,  4.0)
cc08_01 = ( 8.0,  8.0)
cc16_01 = (16.0, 16.0)

cc04_02 = cc04_01
cc08_02 = cc08_01
cc16_02 = cc16_01

ii01_02 = cshift(ii01_02, ii04_01)
ii02_02 = cshift(ii02_02, ii04_01)
ii04_02 = cshift(ii04_02, ii04_01)
ii08_02 = cshift(ii08_02, ii04_01)

rr04_02 = cshift(rr04_02, ii04_01)
rr08_02 = cshift(rr08_02, ii04_01)
rr16_02 = cshift(rr16_02, ii04_01)

cc04_02 = cshift(cc04_02, ii04_01)
cc08_02 = cshift(cc08_02, ii04_01)
cc16_02 = cshift(cc16_02, ii04_01)

ii01_02 = eoshift(ii01_02, ii04_01)
ii02_02 = eoshift(ii02_02, ii04_01)
ii04_02 = eoshift(ii04_02, ii04_01)
ii08_02 = eoshift(ii08_02, ii04_01)

rr04_02 = eoshift(rr04_02, ii04_01)
rr08_02 = eoshift(rr08_02, ii04_01)
rr16_02 = eoshift(rr16_02, ii04_01)

cc04_02 = eoshift(cc04_02, ii04_01)
cc08_02 = eoshift(cc08_02, ii04_01)
cc16_02 = eoshift(cc16_02, ii04_01)

ii04_02 = lbound(ii01_02)
ii04_02 = lbound(ii02_02)
ii04_02 = lbound(ii04_02)
ii04_02 = lbound(ii08_02)

ii04_02 = lbound(rr04_02)
ii04_02 = lbound(rr08_02)
ii04_02 = lbound(rr16_02)

ii04_02 = lbound(cc04_02)
ii04_02 = lbound(cc08_02)
ii04_02 = lbound(cc16_02)

ii04_01 = lbound(ii01_02, ii04_01)
ii04_01 = lbound(ii02_02, ii04_01)
ii04_01 = lbound(ii04_02, ii04_01)
ii04_01 = lbound(ii08_02, ii04_01)

ii04_01 = lbound(rr04_02, ii04_01)
ii04_01 = lbound(rr08_02, ii04_01)
ii04_01 = lbound(rr16_02, ii04_01)

ii04_01 = lbound(cc04_02, ii04_01)
ii04_01 = lbound(cc08_02, ii04_01)
ii04_01 = lbound(cc16_02, ii04_01)

ii01_01 = merge(ii01_01, ii01_01, .true.)
ii02_01 = merge(ii02_01, ii02_01, .true.)
ii04_01 = merge(ii04_01, ii04_01, .true.)
ii08_01 = merge(ii08_01, ii08_01, .true.)

rr04_01 = merge(rr04_01, rr04_01, .true.)
rr08_01 = merge(rr08_01, rr08_01, .true.)
rr16_01 = merge(rr16_01, rr16_01, .true.)

cc04_01 = merge(cc04_01, cc04_01, .true.)
cc08_01 = merge(cc08_01, cc08_01, .true.)
cc16_01 = merge(cc16_01, cc16_01, .true.)

ii01_02 = pack(ii01_02, (/.true./))
ii02_02 = pack(ii02_02, (/.true./))
ii04_02 = pack(ii04_02, (/.true./))
ii08_02 = pack(ii08_02, (/.true./))

rr04_02 = pack(rr04_02, (/.true./))
rr08_02 = pack(rr08_02, (/.true./))
rr16_02 = pack(rr16_02, (/.true./))

cc04_02 = pack(cc04_02, (/.true./))
cc08_02 = pack(cc08_02, (/.true./))
cc16_02 = pack(cc16_02, (/.true./))

ii01_02 = reshape(ii01_02, ii04_02)
ii02_02 = reshape(ii02_02, ii04_02)
ii04_02 = reshape(ii04_02, ii04_02)
ii08_02 = reshape(ii08_02, ii04_02)

rr04_02 = reshape(rr04_02, ii04_02)
rr08_02 = reshape(rr08_02, ii04_02)
rr16_02 = reshape(rr16_02, ii04_02)

cc04_02 = reshape(cc04_02, ii04_02)
cc08_02 = reshape(cc08_02, ii04_02)
cc16_02 = reshape(cc16_02, ii04_02)

ii04_02 = shape(ii01_02)
ii04_02 = shape(ii02_02)
ii04_02 = shape(ii04_02)
ii04_02 = shape(ii08_02)

ii04_02 = shape(rr04_02)
ii04_02 = shape(rr08_02)
ii04_02 = shape(rr16_02)

ii04_02 = shape(cc04_02)
ii04_02 = shape(cc08_02)
ii04_02 = shape(cc16_02)

ii04_02 = shape(ii01_02, 4)
ii04_02 = shape(ii02_02, 4)
ii04_02 = shape(ii04_02, 4)
ii04_02 = shape(ii08_02, 4)

ii04_02 = shape(rr04_02, 4)
ii04_02 = shape(rr08_02, 4)
ii04_02 = shape(rr16_02, 4)

ii04_02 = shape(cc04_02, 4)
ii04_02 = shape(cc08_02, 4)
ii04_02 = shape(cc16_02, 4)

ii04_01 = size(ii01_02)
ii04_01 = size(ii02_02)
ii04_01 = size(ii04_02)
ii04_01 = size(ii08_02)

ii04_01 = size(rr04_02)
ii04_01 = size(rr08_02)
ii04_01 = size(rr16_02)

ii04_01 = size(cc04_02)
ii04_01 = size(cc08_02)
ii04_01 = size(cc16_02)

ii04_01 = size(ii01_02, ii04_01)
ii04_01 = size(ii02_02, ii04_01)
ii04_01 = size(ii04_02, ii04_01)
ii04_01 = size(ii08_02, ii04_01)

ii04_01 = size(rr04_02, ii04_01)
ii04_01 = size(rr08_02, ii04_01)
ii04_01 = size(rr16_02, ii04_01)

ii04_01 = size(cc04_02, ii04_01)
ii04_01 = size(cc08_02, ii04_01)
ii04_01 = size(cc16_02, ii04_01)

ii01_02 = spread(ii01_01, ii04_01, ii04_01)
ii02_02 = spread(ii02_01, ii04_01, ii04_01)
ii04_02 = spread(ii04_01, ii04_01, ii04_01)
ii08_02 = spread(ii08_01, ii04_01, ii04_01)

rr04_02 = spread(rr04_01, ii04_01, ii04_01)
rr08_02 = spread(rr08_01, ii04_01, ii04_01)
rr16_02 = spread(rr16_01, ii04_01, ii04_01)

cc04_02 = spread(cc04_01, ii04_01, ii04_01)
cc08_02 = spread(cc08_01, ii04_01, ii04_01)
cc16_02 = spread(cc16_01, ii04_01, ii04_01)

ii01_01 = transfer(ii01_01, ii01_01)
ii02_01 = transfer(ii02_01, ii02_01)
ii04_01 = transfer(ii04_01, ii04_01)
ii08_01 = transfer(ii08_01, ii08_01)

rr04_01 = transfer(rr04_01, rr04_01)
rr08_01 = transfer(rr08_01, rr08_01)
rr16_01 = transfer(rr16_01, rr16_01)

cc04_01 = transfer(cc04_01, cc04_01)
cc08_01 = transfer(cc08_01, cc08_01)
cc16_01 = transfer(cc16_01, cc16_01)

ii04_02 = ubound(ii01_02)
ii04_02 = ubound(ii02_02)
ii04_02 = ubound(ii04_02)
ii04_02 = ubound(ii08_02)

ii04_02 = ubound(rr04_02)
ii04_02 = ubound(rr08_02)
ii04_02 = ubound(rr16_02)

ii04_02 = ubound(cc04_02)
ii04_02 = ubound(cc08_02)
ii04_02 = ubound(cc16_02)

ii04_01 = ubound(ii01_02, ii04_01)
ii04_01 = ubound(ii02_02, ii04_01)
ii04_01 = ubound(ii04_02, ii04_01)
ii04_01 = ubound(ii08_02, ii04_01)

ii04_01 = ubound(rr04_02, ii04_01)
ii04_01 = ubound(rr08_02, ii04_01)
ii04_01 = ubound(rr16_02, ii04_01)

ii04_01 = ubound(cc04_02, ii04_01)
ii04_01 = ubound(cc08_02, ii04_01)
ii04_01 = ubound(cc16_02, ii04_01)

ii01_02 = pack(ii01_02, (/.true./), ii01_02)
ii02_02 = pack(ii02_02, (/.true./), ii02_02)
ii04_02 = pack(ii04_02, (/.true./), ii04_02)
ii08_02 = pack(ii08_02, (/.true./), ii08_02)

rr04_02 = pack(rr04_02, (/.true./), rr04_02)
rr08_02 = pack(rr08_02, (/.true./), rr08_02)
rr16_02 = pack(rr16_02, (/.true./), rr16_02)

cc04_02 = pack(cc04_02, (/.true./), cc04_02)
cc08_02 = pack(cc08_02, (/.true./), cc08_02)
cc16_02 = pack(cc16_02, (/.true./), cc16_02)

end
