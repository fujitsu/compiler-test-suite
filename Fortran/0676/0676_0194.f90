      print *,MOD(38.0_8, 19.0_8)
      print *,MOD(39.0_8, 19.0_8)
      print *,MOD(38.4_8, 19.0_8)
      print *,MOD(39.2_8, 19.0_8)
      print *,MOD(16777216._8, 19.0_8)
      print *,MOD(16777217._8, 19.0_8)
      print *,MOD(16777218._8, 19.0_8)
      print *,MOD(16777219._8, 19.0_8)
      print *,MOD(2000000._8, 19.0_8)
      print *,MOD(2000002.2_8, 19.0_8)
      print *,MOD(20000000._8, 19.0_8)
      print *,20000000._8 - int(20000000._8 / 19.0_8, kind=4) * 19.0_8
      print *,MOD(20000002.2_8, 19.0_8)
      print *,20000002._8 - int(20000002._8 / 19.0_8, kind=4) * 19.0_8
      print *,MOD(100000000.0_8, 19.0_8)
      print *,100000000._8 - int(100000000._8 / 19.0_8, kind=4) * 19.0_8
      print *,MOD(200000000.0_8, 19.0_8)
      print *,200000000._8 - int(200000000._8 / 19.0_8, kind=4) * 19.0_8
      print *,MOD(268435456.0_8, 19.0_8)
      print *,268435456.0_8 - int(268435456.0_8 / 19.0_8, kind=4) * 19.0_8
      print *,MOD(4000000000.0_8, 19.0_8)
      print *,4000000000._8 - int(4000000000._8 / 19.0_8, kind=4) * 19.0_8
      end
