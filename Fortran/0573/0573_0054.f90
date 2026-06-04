INTERFACE GEN
 SUBROUTINE S1 (J, alC)
 INTEGER::J
 character(len=J),allocatable:: alc
 END SUBROUTINE S1
 SUBROUTINE S2 (K, alc)
 INTEGER K
 character(len=K),allocatable:: alc(:,:)
 END SUBROUTINE S2
 END INTERFACE
 character(len=:),allocatable:: obj1
 character(len=:),allocatable:: obj2(:,:)
 CALL GEN(2, NULL(obj1))
 CALL GEN(3, NULL(obj2))
 CALL S1(2, NULL(obj1))
 CALL S2(3, NULL(obj2))
print*,"pass"
END
 SUBROUTINE S1 (J, alc)
 INTEGER::J
 character(len=J),allocatable:: alc
 if(len(alc).ne.2)print*,"101"
 if(J.ne.2)print*,"102"
 END SUBROUTINE S1
 SUBROUTINE S2 (K, alc)
 INTEGER K
 character(len=K),allocatable::alc(:,:)
 if(K.ne.3)print*,"201"
 if(len(alc).ne.3)print*,"202"
 if(rank(alc).ne.2)print*,"203"
 END SUBROUTINE S2

