PROGRAM main
 
TYPE t_seq
SEQUENCE
 INTEGER::number
END TYPE
 
TYPE stc
 TYPE(t_seq), POINTER :: cmp
END TYPE
 
CLASS (*),POINTER :: element
TYPE(stc)::obj
obj=stc(element)
 
print*,sizeof(obj),'pass'
END
