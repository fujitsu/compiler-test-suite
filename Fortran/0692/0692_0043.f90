      character(kind=1,len=4)::ch4a(5)

      common /com3/ch4a
!$omp threadprivate(/com3/)

      ch4a=(/'b123','d123','c987','f987','e014'/)
      ch4a(ICHAR(ch4a(:)(1:1))-ICHAR('a'))=ch4a
 if (any(ch4a/=(/'b123','c987','d123','e014','f987'/)))print *,'fail'

      ch4a=(/'b123','d123','c987','f987','e014'/)
      ch4a((/1,3,2,5,4/))=ch4a
 if (any(ch4a/=(/'b123','c987','d123','e014','f987'/)))print *,'fail'

      ch4a=(/'b123','d123','c987','f987','e014'/)
      ch4a(2:5)=ch4a(1:4)
 if (any(ch4a/=(/'b123','b123','d123','c987','f987'/)))print *,'fail'

print *,'pass'
      end
