       structure /str/
        integer a
       endstructure
       record /str/ s1(:)
       allocatable s1
       allocate (s1(3))
       s1.a=1
       j=s1(3).a
       print *,s1(3)
       end
