subroutine checkans(ires,ians)
if (ires == ians) then
  print *,"ok"
else
  print *,ires," != ",ians
  print *,"ng"
endif
end subroutine

subroutine c8func(c8a,c8b,c8c)
complex(kind=4) c8a,c8b,c8c
integer,parameter :: ians1 = -611
integer,parameter :: ians2 = 53758
c8a = c8a + c8b * c8c
c8a = c8a - c8b / c8c
i1 = int(real(c8a)*10000)
i2 = int(imag(c8a)*10000)
call checkans(i1,ians1)
call checkans(i2,ians2)
end subroutine

subroutine c16func(c16a,c16b,c16c)
complex(kind=8) c16a,c16b,c16c
integer,parameter :: ians1 = -611
integer,parameter :: ians2 = 53758
c16a = c16a + c16b * c16c
c16a = c16a - c16b / c16c
i1 = int(real(c16a)*10000)
i2 = int(imag(c16a)*10000)
call checkans(i1,ians1)
call checkans(i2,ians2)
end subroutine

subroutine c32func(c32a,c32b,c32c)
complex(kind=16) c32a,c32b,c32c
integer,parameter :: ians1 = -611
integer,parameter :: ians2 = 53758
c32a = c32a + c32b * c32c
c32a = c32a - c32b / c32c
i1 = int(real(c32a)*10000)
i2 = int(imag(c32a)*10000)
call checkans(i1,ians1)
call checkans(i2,ians2)
end subroutine

program main
complex(kind=4) c8a,c8b,c8c
complex(kind=8) c16a,c16b,c16c
complex(kind=16) c32a,c32b,c32c
c8a = (1.1_4,1.2_4)
c8b = (1.3_4,1.4_4)
c8c = (1.5_4,1.6_4)
c16a = (1.1_8,1.2_8)
c16b = (1.3_8,1.4_8)
c16c = (1.5_8,1.6_8)
c32a = (1.1_16,1.2_16)
c32b = (1.3_16,1.4_16)
c32c = (1.5_16,1.6_16)
call c8func(c8a,c8b,c8c)
call c16func(c16a,c16b,c16c)
call c32func(c32a,c32b,c32c)
end program
