      module fltname

         implicit none

         type fface_type
            integer                         :: cell_ndx
            integer                         :: neighbor
            double precision           :: transmis
            double precision           :: area
            double precision           :: r_zero
            double precision           :: r_fault
         end type fface_type

         type face_link
            type (fface_type)            :: f_face
            type (face_link), pointer  :: next
         end type face_link

         type beg_curr
            type (face_link), pointer  :: start
            type (face_link), pointer  :: current
         end type beg_curr

         type fname_type
            character (len = 10)        :: flt_name
            integer                           :: grid_number
            integer                           :: nr_faces
            integer                           :: non_neighbors
            type (fface_type), pointer :: flt_face (:)
         end type fname_type

      end module fltname
         subroutine fltface (fault, start_curr)

         use fltname

         implicit none

         type (fname_type)            :: fault
         type (beg_curr)                :: start_curr
         type (face_link), pointer    :: f_curr
         type (face_link), pointer    :: f_save

         integer                            :: alc_status

         integer                            :: j

         f_curr => start_curr % start

         j = 0

         if (fault % nr_faces > 0) then
            allocate (fault % flt_face (fault % nr_faces), stat = alc_status)
            if (alc_status/=0)print *,'error1'
            do while (associated (f_curr))

               j = j + 1

               fault % flt_face (j) = f_curr % f_face 

               f_save => f_curr
               f_curr => f_curr % next

               deallocate (f_save)

            end do

         end if

      end subroutine fltface
print *,'pass'
end
