call test01()
print *,'pass'
end

subroutine test01()
data i01,i02,i03 /2*1,1/
data i04,i05,i06 /1,2*1/
data i07,i08,i09 /1,1,1/
data i10,i11,i12 /3*1/
i01=i01 ; i02=i02 ; i03=i03 ; i04=i04 ; i05=i05 ;
i06=i06 ; i07=i07 ; i08=i08 ; i09=i09 ; i10=i10 ;
i11=i11 ; i12=i12 ;
end
