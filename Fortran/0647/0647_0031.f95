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

  type(bbb) function fun1()
    use mod1_1
    use mod2_1
    v1 = v2
  end function

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

  type(bbb) function fun2()
    use mod1_2
    use mod2_2
    v1%ae1 = v2%ae1
    v1 = v2
  end function

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

  type(bbb) function fun3()
    use mod1_3
    use mod2_3,ccc=>bbb
    v1 = v2
  end function

  type(ccc) function fun3_2()
    use mod1_3
    use mod2_3,ccc=>bbb
    v1 = v2
  end function

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

  type(bbb) function fun4()
    use mod1_4
    use mod2_4,ccc=>bbb
    v1%ae1 = v2%ae1
    v1 = v2
  end function

  type(ccc) function fun4_2()
    use mod1_4
    use mod2_4,ccc=>bbb
    v1%ae1 = v2%ae1
    v1 = v2
  end function

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

  type(bbb) function fun5()
    use mod1_5
    use mod2_5
    v1 = v2
  end function

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

  type(bbb) function fun6()
    use mod1_6,only:bbb,v1
    use mod2_6,only:bbb,v2
    v1 = v2
  end function

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

  type(bbb) function fun7()
    use mod1_7,only:v1,bbb
    use mod2_7,only:v2,bbb
    v1%ae1 = v2%ae1
    v1 = v2
  end function

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

  type(bbb) function fun8()
    use mod1_8
    use mod2_8,ccc=>bbb
    v1 = v2
  end function 

  type(ccc) function fun8_2()
    use mod1_8
    use mod2_8,ccc=>bbb
    v1 = v2
  end function 

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

  type(bbb) function fun9()
    use mod1_9,only:bbb,v1
    use mod2_9,only:ccc=>bbb,v2
    v1 = v2
  end function

  type(ccc) function fun9_2()
    use mod1_9,only:bbb,v1
    use mod2_9,only:ccc=>bbb,v2
    v1 = v2
  end function

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

  type(bbb) function fun10()
    use mod1_10,only:bbb,v1
    use mod2_10,only:ccc=>bbb,v2
    v1%ae1 = v2%ae1
    v1 = v2
  end function

  type(ccc) function fun10_2()
    use mod1_10,only:bbb,v1
    use mod2_10,only:ccc=>bbb,v2
    v1%ae1 = v2%ae1
    v1 = v2
  end function