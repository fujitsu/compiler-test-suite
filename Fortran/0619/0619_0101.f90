 module mod
    contains
    function mfunc01(arg1) result(ret)
      integer :: arg1
      character(:),pointer :: ret
      allocate(character(arg1):: ret)
      ret(:) = "1234567890"
      return
      entry ent01(arg1) result(ret)
      allocate(character(arg1):: ret)
      ret = "2345678901"
    end function
    function mfunc02(arg1) result(ret)
      integer :: arg1
      character(:),allocatable :: ret
      allocate(character(arg1):: ret)
      ret(:) = "3456789012"
      return
      entry ent02(arg1) result(ret)
      allocate(character(arg1):: ret)
      ret(:) = "4567890123"
    end function
 end module
 use mod
 character(:),pointer :: cha1,cha11
 character(:),allocatable :: cha2,cha22
 allocate(character(10)::cha2,cha22)
 cha1 =>  mfunc01(10)
 cha11 =>  ent01(10)
 cha2 = mfunc02(10)
 cha22 = ent02(10)
 if (cha1/='1234567890')print *,101,cha1
 if (cha2/='3456789012')print *,102,cha2
 if (cha11/='2345678901')print *,103,cha11
 if (cha22/='4567890123')print *,104,cha22
print *,'pass'
 end
