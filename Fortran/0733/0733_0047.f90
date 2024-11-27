      type tag31
        integer        i/1/
      end type

      type tag30
        integer        i/1/
        type (tag31)  ::a31
      end type

      type tag2
        type (tag30)  ::a30
        integer        i/1/
      end type

      type tag1
        type (tag2)   ::a2
        type (tag30)  ::a30
        integer        i/1/
      end type
      type (tag1) ::a1

      if (a1%a2%a30%a31%i .ne.1)  print *,'ng'
     print *,'pass'
      end
