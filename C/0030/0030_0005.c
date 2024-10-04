enum fp_class_type {		 
	fp_zero		= 0,
};

typedef char decimal_string[ 512 ];	

typedef struct {
	enum fp_class_type fpclass;
	decimal_string ds;	 
} decimal_record;
int main()
{
}
