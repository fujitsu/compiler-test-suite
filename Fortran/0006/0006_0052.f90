subroutine s1
complex(8)::r8(4,4)
complex(8)::r81(4,4)
complex(8)::r82(4,4)
r81=reshape((/(cmplx(i,i+i),i=11,114)/),(/4,4/))
r82=reshape((/(cmplx(i,i+i),i=21,132)/),(/4,4/))
r8=r81
r8(:,:)=matmul(r8(:,:),r82)
if (any(abs((/r8/)*2-[&
(-9300.0,12400.),(-9840.0,13120.),(-10380.,13840.),(-10920.,14560.),(-10932.,14576.),(-11568.,15424.),&
(-12204.,16272.),(-12840.,17120.),(-12564.,16752.),(-13296.,17728.),(-14028.,18704.),(-14760.,19680.),(-14196.,18928.),(-15024.,20032.),(-15852.,21136.),(-16680.,22240.)&
])>1.)) print *,101,r8
!print *,101,r8
end
call s1
print *,'OK'
end