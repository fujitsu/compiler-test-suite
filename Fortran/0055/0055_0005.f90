      procedure(type(double precision))::f4
      type(double precision) ::p2
      p2=200.5
      if(f4() /= p2) print*,"101"
      print*,"PASS"
  end
       type(double precision) function f4()
            f4=200.5
       end function
