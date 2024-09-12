  program main

  print *," *** pass *** "

  end program main

  module mod_base_1
    private aaa
    type aaa
      type (bbb), pointer :: ae1
    end type 
    type bbb
      integer :: be1
    end type 
  end module

  module mod1_1
    use mod_base_1
    type(bbb) v1
  end module

  module mod2_1
    use mod_base_1
    type(bbb) v2
  end module

  subroutine sub1
    contains
      type(bbb) function fun1()
        use mod2_1
        use mod1_1
        v1 = v2
        fun1 = v1
        fun1 = v2
      end function
  end subroutine 

  module mod_base_2
    type aaa
      type (bbb), pointer :: ae1
    end type 
    type bbb
      integer :: be1
    end type 
  end module

  module mod1_2
    use mod_base_2
    private aaa
    type(aaa) v1
  end module

  module mod2_2
    use mod_base_2
    private aaa
    type(aaa) v2
  end module

  subroutine sub2
    contains
      type(bbb) function fun2()
        use mod2_2
        use mod1_2
        v1%ae1 = v2%ae1
        v1 = v2
        fun2 = v1%ae1
        fun2 = v2%ae1
      end function
  end subroutine

  module mod_base_3
    private aaa
    type aaa
      type (bbb), pointer :: ae1
    end type 
    type bbb
      integer :: be1
    end type 
  end module

  module mod1_3
    use mod_base_3
    type(bbb) v1
  end module

  module mod2_3
    use mod_base_3
    type(bbb) v2
  end module

  subroutine sub3
    contains
      type(bbb) function fun3()
        use mod2_3,ccc=>bbb
        use mod1_3
        v1 = v2
        fun3 = v1
        fun3 = v2
      end function
  end subroutine

  subroutine sub3_2
    contains
      type(ccc) function fun3_2()
        use mod2_3,ccc=>bbb
        use mod1_3
        v1 = v2
        fun3_2 = v1
        fun3_2 = v2
      end function
  end subroutine

  module mod_base_4
    type aaa
      type (bbb), pointer :: ae1
    end type 
    type bbb
      integer :: be1
    end type 
  end module

  module mod1_4
    use mod_base_4
    private aaa
    type(aaa) v1
  end module

  module mod2_4
    use mod_base_4
    private aaa
    type(aaa) v2
  end module

  subroutine sub4
    contains
      type(bbb) function fun4()
        use mod2_4,ccc=>bbb
        use mod1_4
        v1%ae1 = v2%ae1
        v1 = v2
        fun4 = v1%ae1
        fun4 = v2%ae1
      end function
  end subroutine

  subroutine sub4_2
    contains
      type(ccc) function fun4_2()
        use mod2_4,ccc=>bbb
        use mod1_4
        v1%ae1 = v2%ae1
        v1 = v2
        fun4_2 = v1%ae1
        fun4_2 = v2%ae1
      end function
  end subroutine

  module mod_base_5
    type aaa
      type (bbb), pointer :: ae1
    end type 
    type bbb
      integer :: be1
    end type 
  end module

  module mod1_5
    use mod_base_5,only:bbb
    type(bbb) v1
  end module

  module mod2_5
    use mod_base_5,only:bbb
    type(bbb) v2
  end module

  subroutine sub5
    contains
      type(bbb) function fun5()
        use mod2_5
        use mod1_5
        v1 = v2
        fun5 = v1
        fun5 = v2
      end function
  end subroutine

  module mod_base_6
    type aaa
      type (bbb), pointer :: ae1
    end type 
    type bbb
      integer :: be1
    end type 
  end module

  module mod1_6
    use mod_base_6
    type(bbb) v1
  end module

  module mod2_6
    use mod_base_6
    type(bbb) v2
  end module

  subroutine sub6
    contains
      type(bbb) function fun6()
        use mod2_6,only:bbb,v2
        use mod1_6,only:bbb,v1
        v1 = v2
        fun6 = v1
        fun6 = v2
      end function
  end subroutine

  module mod_base_7
    type aaa
      type (bbb), pointer :: ae1
    end type 
    type bbb
      integer :: be1
    end type 
  end module

  module mod1_7
    use mod_base_7
    type(aaa) v1
  end module

  module mod2_7
    use mod_base_7
    type(aaa) v2
  end module

  subroutine sub7
    contains
      type(bbb) function fun7()
        use mod2_7,only:v2,bbb
        use mod1_7,only:v1,bbb
        v1%ae1 = v2%ae1
        v1 = v2
        fun7 = v1%ae1
        fun7 = v2%ae1
      end function
  end subroutine

  module mod_base_8
    type aaa
      type (bbb), pointer :: ae1
    end type 
    type bbb
      integer :: be1
    end type 
  end module

  module mod1_8
    use mod_base_8,only:bbb
    type(bbb) v1
  end module

  module mod2_8
    use mod_base_8,only:bbb
    type(bbb) v2
  end module

  subroutine sub8
    contains
      type(bbb) function fun8()
        use mod2_8,ccc=>bbb
        use mod1_8
        v1 = v2
        fun8 = v1
        fun8 = v2
      end function 
  end subroutine

  subroutine sub8_2
    contains
      type(ccc) function fun8_2()
        use mod2_8,ccc=>bbb
        use mod1_8
        v1 = v2
        fun8_2 = v1
        fun8_2 = v2
      end function 
  end subroutine

  module mod_base_9
    type aaa
      type (bbb), pointer :: ae1
    end type 
    type bbb
      integer :: be1
    end type 
  end module

  module mod1_9
    use mod_base_9
    type(bbb) v1
  end module

  module mod2_9
    use mod_base_9
    type(bbb) v2
  end module

  subroutine sub9
    contains
      type(bbb) function fun9()
        use mod2_9,only:ccc=>bbb,v2
        use mod1_9,only:bbb,v1
        v1 = v2
        fun9 = v1
        fun9 = v2
      end function
  end subroutine

  subroutine sub9_2
    contains
      type(ccc) function fun9_2()
        use mod2_9,only:ccc=>bbb,v2
        use mod1_9,only:bbb,v1
        v1 = v2
        fun9_2 = v1
        fun9_2 = v2
      end function
  end subroutine

  module mod_base_10
    type aaa
      type (bbb), pointer :: ae1
    end type 
    type bbb
      integer :: be1
    end type 
  end module

  module mod1_10
    use mod_base_10
    type(aaa) v1
  end module

  module mod2_10
    use mod_base_10
    type(aaa) v2
  end module

  subroutine sub10
    contains
      type(bbb) function fun10()
        use mod2_10,only:ccc=>bbb,v2
        use mod1_10,only:bbb,v1
        v1%ae1 = v2%ae1
        v1 = v2
        fun10 = v1%ae1
        fun10 = v2%ae1
      end function
  end subroutine

  subroutine sub10_2
    contains
      type(ccc) function fun10_2()
        use mod2_10,only:ccc=>bbb,v2
        use mod1_10,only:bbb,v1
        v1%ae1 = v2%ae1
        v1 = v2
        fun10_2 = v1%ae1
        fun10_2 = v2%ae1
      end function
  end subroutine
