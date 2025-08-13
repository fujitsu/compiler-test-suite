      module Personnel_class
      implicit none
      private :: init_Personnel, term_Personnel, print_Personnel
      type Personnel
         private
         integer :: ssn
         character, dimension(:), pointer :: firstname, lastname
      end type Personnel
      integer, save, private :: NUM_FILES = 0
      interface new
         module procedure init_Personnel
      end interface
      interface delete
         module procedure term_Personnel
      end interface
      interface print
         module procedure print_Personnel
      end interface
      contains
         subroutine init_Personnel(this,s,fn,ln)
         type (Personnel), intent (out) :: this
         integer, intent (in) :: s
         character*(*), intent (in) :: fn, ln
         this%ssn = s
         allocate(this%firstname(len(fn)),this%lastname(len(ln)))
         call strcpy(this%firstname,fn)
         call strcpy(this%lastname,ln)
         NUM_FILES = NUM_FILES + 1
         end subroutine init_Personnel
         subroutine term_Personnel(this)
         type (Personnel), intent (inout) :: this
         deallocate(this%firstname,this%lastname)
         NUM_FILES = NUM_FILES - 1
         end subroutine term_Personnel
         subroutine print_Personnel(this,printssn)
         type (Personnel), intent (in) :: this
         logical, optional, intent (in) :: printssn
         if (present(printssn)) then
            if (printssn) write (55,'(i2,a2)',advance='no') this%ssn,': '
         endif
         write(55,*) this%firstname, ' ', this%lastname
         end subroutine print_Personnel
         function getssn_Personnel(this) result(ssn)
         type (Personnel), intent (in) :: this
         integer :: ssn
         ssn = this%ssn
         end function getssn_Personnel
         integer function get_num_files()
         get_num_files = NUM_FILES
         end function get_num_files
         subroutine strcpy(s,c)
         character, dimension (:), intent (out) :: s
         character*(*), intent (in) :: c
         integer :: i
         do i = 1, max(size(s),len(c))
            s(i) = c(i:i)
         enddo
         end subroutine strcpy
      end module Personnel_class
      module Student_class
      use Personnel_class
      implicit none
      private :: Personnel, init_Student, term_Student, print_Student
      private :: getssn_Personnel, getssn_Student
      type, private :: String
         character*1, dimension(:), pointer :: stringptr
      end type String
      type Student
         private
         type (Personnel) :: personnel
         integer :: nclasses
         type (String), dimension (10) :: classes
      end type Student
      interface new
         module procedure init_Student
      end interface
      interface delete
         module procedure term_Student
      end interface
      interface print
         module procedure print_Student
      end interface
      interface getssn
         module procedure getssn_Student
      end interface
      contains
         subroutine init_Student(this,s,fn,ln)
         type (Student), intent (out) :: this
         integer, intent (in) :: s
         character*(*), intent (in) :: fn, ln
         call new(this%personnel,s,fn,ln)
         this%nclasses = 0
         end subroutine init_Student
         subroutine term_Student(this)
         type (Student), intent (inout) :: this
         integer :: i
         call delete(this%personnel)
         do i = 1, this%nclasses
            deallocate(this%classes(i)%stringptr)
         enddo
         end subroutine term_Student
         subroutine print_Student(this,printssn)
         type (Student), intent (in) :: this
         logical, optional, intent (in) :: printssn
         integer :: i, j
         call print(this%personnel,printssn)
         if (this%nclasses==0) then
            write(55,*)'-- Not Enrolled'
         else
            write(55,*)'-- Enrolled'
            do i = 1, this%nclasses
               do j = 1, size(this%classes(i)%stringptr)
               write (55,'(a)',advance='no') this%classes(i)%stringptr(j)
               enddo
            enddo
         endif
         end subroutine print_Student
         integer function getssn_Student(this)
         type (Student), intent (in) :: this
         getssn_Student = getssn_Personnel(this%personnel)
         end function getssn_Student
         subroutine addclass(this,c)
         type (Student), intent (inout) :: this
         character*(*), intent (in) :: c
         this%nclasses = this%nclasses + 1
         allocate(this%classes(this%nclasses)%stringptr(len(c)))
         call strcpy(this%classes(this%nclasses)%stringptr,c)
         end subroutine addclass
      end module Student_class
      module Teacher_class
      use Personnel_class
      implicit none
      private :: Personnel, init_Teacher, term_Teacher, print_Teacher
      private :: getssn_Personnel, getssn_Teacher
      type Teacher
         private
         type (Personnel) :: personnel
         integer :: salary
      end type Teacher
      interface new
         module procedure init_Teacher
      end interface
      interface delete
         module procedure term_Teacher
      end interface
      interface print
         module procedure print_Teacher
      end interface
      interface getssn
         module procedure getssn_Teacher
      end interface
      contains
         subroutine init_Teacher(this,s,fn,ln,sal)
         type (Teacher), intent (out) :: this
         integer, intent (in) :: s, sal
         character*(*), intent (in) :: fn, ln
         call new(this%personnel,s,fn,ln)
         this%salary = sal
         end subroutine init_Teacher
         subroutine term_Teacher(this)
         type (Teacher), intent (inout) :: this
         call delete(this%personnel)
         end subroutine term_Teacher
         subroutine print_Teacher(this,printssn)
         type (Teacher), intent (in) :: this
         logical, optional, intent (in) :: printssn
         call print(this%personnel,printssn)
         write(55,*) '-- Salary: ', this%salary
         end subroutine print_Teacher
         integer function getssn_Teacher(this)
         type (Teacher), intent (in) :: this
         getssn_Teacher = getssn_Personnel(this%personnel)
         end function getssn_Teacher
         subroutine updatesalary(this,sal)
         type (Teacher), intent (inout) :: this
         integer, intent (in) :: sal
         this%salary = sal
         end subroutine updatesalary
      end module Teacher_class
      module poly_Personnel_class
      use Student_class
      use Teacher_class
      private :: poly_init, assign_student, assign_teacher
      private :: poly_print, poly_getssn, poly_addclass
      private :: poly_updatesalary
      type poly_Personnel
         private
         type (Student), pointer :: ps
         type (Teacher), pointer :: pt
      end type poly_Personnel
      interface new
         module procedure poly_init
      end interface
      interface poly
         module procedure assign_student, assign_teacher
      end interface
      interface print
         module procedure poly_print
      end interface
      interface getssn
         module procedure poly_getssn
      end interface
      interface addclass
         module procedure addclass, poly_addclass
      end interface
      interface updatesalary
         module procedure updatesalary, poly_updatesalary
      end interface
      contains
         subroutine poly_init(this)
         type (poly_Personnel), intent (out) :: this
         nullify(this%ps)
         nullify(this%pt)
         end subroutine poly_init
         function assign_student(ps) result(pps)
         type (poly_Personnel) :: pps
         type (Student), target, intent(in) :: ps
         pps%ps => ps
         nullify(pps%pt)
         end function assign_student
         function assign_teacher(pt) result(pps)
         type (poly_Personnel) :: pps
         type (Teacher), target, intent(in) :: pt
         nullify(pps%ps)
         pps%pt => pt
         end function assign_teacher
         subroutine poly_print(this,printssn)
         type (poly_Personnel), intent (in) :: this
         logical, optional, intent (in) :: printssn
         if (associated(this%ps)) then
            call print(this%ps,printssn)
         elseif (associated(this%pt)) then
            call print(this%pt,printssn)
         endif
         end subroutine poly_print
         integer function poly_getssn(this)
         type (poly_Personnel), intent (in) :: this
         if (associated(this%ps)) then
            poly_getssn = getssn(this%ps)
         elseif (associated(this%pt)) then
            poly_getssn = getssn(this%pt)
         endif
         end function poly_getssn
         subroutine poly_addclass(this,c)
         type (poly_Personnel), intent (inout) :: this
         character*(*), intent (in) :: c
         if (associated(this%ps)) call addclass(this%ps,c)
         end subroutine poly_addclass
         subroutine poly_updatesalary(this,sal)
         type (poly_Personnel), intent (inout) :: this
         integer, intent (in) :: sal
         if (associated(this%pt)) call updatesalary(this%pt,sal)
         end subroutine poly_updatesalary
      end module poly_Personnel_class
      module Database_class
      use poly_Personnel_class
      private :: init_Database, print_Database
      type Database
         private
         type (poly_Personnel) :: file
         type (Database), pointer :: next
      end type Database
      interface new
         module procedure init_Database
      end interface
      interface print
         module procedure print_Database
      end interface
      contains
         subroutine init_Database(this)
         type (Database), intent (out) :: this
         call new(this%file)
         nullify(this%next)
         end subroutine init_Database
         subroutine print_Database(this)
         type (Database), target, intent (inout) :: this
         type (Database), pointer :: tmp
         tmp => this
         do while (associated(tmp%next))
            call print(tmp%file)
            tmp => tmp%next
         enddo
         end subroutine print_Database
         subroutine add(this,f)
         type (Database), target, intent (inout) :: this
         type (poly_Personnel) :: f
         type (Database), pointer :: tmp
         tmp => this
         do while (associated(tmp%next))
            tmp => tmp%next
         enddo
         tmp%file = f
         allocate(tmp%next)
         call new(tmp%next)
         end subroutine add
         subroutine remove(this,s)
         type (Database), target, intent (inout) :: this
         integer, intent (in) :: s
         type (Database), pointer :: tmp
         tmp => this
         do while (associated(tmp%next))
            if (getssn(tmp%file)==s) then
               tmp%file = tmp%next%file
               tmp%next => tmp%next%next
               return
            endif
            tmp => tmp%next
         enddo
         Print *,'Database::remove: file not found'
         end subroutine remove
         type (poly_Personnel) function locate(this,s)
         type (Database), target, intent (in) :: this
         integer, intent (in) :: s
         type (Database), pointer :: tmp
         tmp => this
         do while (associated(tmp%next))
            if (getssn(tmp%file)==s) then
               locate = tmp%file
               return
            endif
            tmp => tmp%next
         enddo
         Print *,'Database::locate: file not found'
         call new(locate)
         end function locate
      end module Database_class
      program main
      use Database_class
      implicit none
      integer :: i
      type (Database), target :: cs
      type (poly_Personnel) :: person
      type (Student), pointer :: pstudent
      type (Teacher), pointer :: pteacher
      call new(cs)
      allocate(pstudent)
      call new(pstudent,1,'PAUL','JONES')
      person = poly(pstudent)
      call add(cs,person)
      allocate(pteacher)
      call new(pteacher,2,'JOHN','WHITE',1000)
      person = poly(pteacher)
      call add(cs,person)
      person = locate(cs,1)
      call addclass(person,'PHYSICS')
      person = locate(cs,2)
      call updatesalary(person,2000)
      call print(cs)
      do i = 1, get_num_files()
         call remove(cs,i)
      enddo
      print *,'pass'
      end program main
