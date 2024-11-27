#include <stdio.h>
int main()
{
	unsigned long long int i;
	i = 1;
	if( i == 0 ) puts(" NG ");
	if( i != 0 ) puts(" OK ");
	if( i >= 0 ) puts(" OK ");
	if( i >  0 ) puts(" OK ");
	if( i <= 0 ) puts(" NG ");
	if( i <  0 ) puts(" NG ");
	i = 0;
	if( i == 0 ) puts(" OK ");
	if( i != 0 ) puts(" NG ");
	if( i >= 0 ) puts(" OK ");
	if( i >  0 ) puts(" NG ");
	if( i <= 0 ) puts(" OK ");
	if( i <  0 ) puts(" NG ");
	i = -1;
	if( i == 0 ) puts(" NG ");
	if( i != 0 ) puts(" OK ");
	if( i >= 0 ) puts(" OK ");
	if( i >  0 ) puts(" OK ");
	if( i <= 0 ) puts(" NG ");
	if( i <  0 ) puts(" NG ");
	i = 1;
	if( 0 == i ) puts(" NG ");
	if( 0 != i ) puts(" OK ");
	if( 0 <= i ) puts(" OK ");
	if( 0 <  i ) puts(" OK ");
	if( 0 >= i ) puts(" NG ");
	if( 0 >  i ) puts(" NG ");
	i = 0;
	if( 0 == i ) puts(" OK ");
	if( 0 != i ) puts(" NG ");
	if( 0 <= i ) puts(" OK ");
	if( 0 <  i ) puts(" NG ");
	if( 0 >= i ) puts(" OK ");
	if( 0 >  i ) puts(" NG ");
	i = -1;
	if( 0 == i ) puts(" NG ");
	if( 0 != i ) puts(" OK ");
	if( 0 <= i ) puts(" OK ");
	if( 0 <  i ) puts(" OK ");
	if( 0 >= i ) puts(" NG ");
	if( 0 >  i ) puts(" NG ");
}
