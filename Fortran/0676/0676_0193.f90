      print *,MOD(38.0_4, 19.0_4)
      print *,MOD(39.0_4, 19.0_4)
      print *,MOD(38.4_4, 19.0_4)
      print *,MOD(39.2_4, 19.0_4)
      print *,MOD(16777216._4, 19.0_4)
      print *,MOD(16777217._4, 19.0_4)
      print *,MOD(16777218._4, 19.0_4)
      print *,MOD(16777219._4, 19.0_4)
      print *,MOD(2000000._4, 19.0_4)
      print *,MOD(2000002.2_4, 19.0_4)
      print *,MOD(20000000._4, 19.0_4)
      print *,20000000._4 - int(20000000._4 / 19.0_4, kind=4) * 19.0_4
      print *,MOD(20000002.2_4, 19.0_4)
      print *,20000002._4 - int(20000002._4 / 19.0_4, kind=4) * 19.0_4
      print *,MOD(100000000.0_4, 19.0_4)
      print *,100000000._4 - int(100000000._4 / 19.0_4, kind=4) * 19.0_4
      print *,MOD(200000000.0_4, 19.0_4)
      print *,200000000._4 - int(200000000._4 / 19.0_4, kind=4) * 19.0_4
      print *,MOD(268435456.0_4, 19.0_4)
      print *,268435456.0_4 - int(268435456.0_4 / 19.0_4, kind=4) * 19.0_4
      print *,MOD(4000000000.0_4, 19.0_4)
      print *,4000000000._4 - int(4000000000._4 / 19.0_4, kind=4) * 19.0_4
      end