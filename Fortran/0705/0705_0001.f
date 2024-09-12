      call s1
      print *,'pass'
      end
      subroutine s1
      implicit character*1(a),character*2(b)
     1        ,character*3(c),character*4(d)
      parameter(b02='123',b04='1')
      b01='123'
      b03='1'
      if (b01.ne.'12')call err(1)
      if (b01.eq.'123')call err(2)
      if (b02.ne.'12')call err(3)
      if (b02.eq.'123')call err(4)
      if (b03.ne.'1')call err(5)
      if (b03.ne.'1 ')call err(6)
      if (b04.ne.'1')call err(7)
      if (b04.ne.'1 ')call err(8)
      if ('12   '.ne.'12') call err(9)
      if ('12'.ne.b01)call err(11)
      if ('123'.eq.b01)call err(12)
      if ('12'.ne.b02)call err(13)
      if ('123'.eq.b02)call err(14)
      if ('1'.ne.b03)call err(15)
      if ('1 '.ne.b03)call err(16)
      if ('1'.ne.b04)call err(17)
      if ('1 '.ne.b04)call err(18)
      if ('12'.ne.'12    ') call err(19)
      end
      subroutine err(i)
      print *,'error code :',i
      end
