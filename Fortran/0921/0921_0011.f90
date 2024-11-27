INTEGER,PARAMETER::M=5
INTEGER I1
INTEGER  Z(M),ZZ


DO CONCURRENT (INTEGER::I1=1:M)

call sub(I1,ZZ)
print*,ZZ
END DO

contains
pure subroutine sub(dmy,dmy2)
integer,intent(inout)::dmy
integer,intent(out)::dmy2
dmy2=dmy
end subroutine
end
