module mod
 type:: ty
  private
   integer        ::a
   integer,public ::b
   integer,private::c
 end type
 type,extends(ty):: ty1
   integer ::a1
   integer ::b2
   integer ::c3
 end type
 type:: ty2
   integer        ::a
   integer,public ::b
   integer,private::c
 end type
 type:: ty3
   integer        ::a
   integer,public ::b
   integer,public ::c
 end type
 type,extends(ty3):: ty4
   integer ::a1
   integer ::b2
   integer ::c3
 end type
 type,extends(ty3):: ty5
   private
   integer ::a1
   integer ::b2
   integer ::c3
 end type
 type:: ty6
   private
   integer,public ::a
   integer,public ::b
   integer,public ::c
 end type
 type,private:: ty7
   integer,public ::a
   integer,public ::b
   integer,public ::c
 end type
 end
 use mod
 print *,'pass'
 end
   
