PROGRAM main

TYPE t_seq
SEQUENCE
 REAL :: rs
END TYPE

CLASS (*),POINTER ::ptr

TYPE(t_seq), POINTER :: sptr

sptr => ptr

print*,'pass'
END
