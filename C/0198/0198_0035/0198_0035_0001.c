#include <stdlib.h>
union uu1 {signed int f3; unsigned char f2; unsigned int f1; double f0; };
union uu0 {unsigned int f4; signed char f3; unsigned short f2; unsigned int f1; signed char f0; };
struct ss1 {unsigned short f3; signed int f2 : 27; unsigned int f1 : 26; unsigned int f0 : 9; };
struct ss0 {unsigned int f2 : 20; unsigned int f1 : 20; unsigned short f0; };
unsigned short v3 (void);
unsigned short (*v4) (void) = v3;
signed short v5 (union uu1);
signed short (*v6) (union uu1) = v5;
extern float v9 (signed short, signed short, unsigned short);
extern float (*v10) (signed short, signed short, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v42 = 170201538;
struct ss0 v41 = { 131978U, 235042U, 51584, };
union uu1 v40 = {-518535046 };

signed short v5 (union uu1 v43)
{
history[history_index++] = (int)v43.f2;
{
for (;;) {
union uu1 v46 = {-1405552786 };
struct ss0 v45 = { 56652U, 431982U, 56627, };
signed int v44 = -362140017;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v3 (void)
{
{
for (;;) {
unsigned short v49 = 16978;
float v48 = -1533400901.25577F;
union uu1 v47 = {618039208 };
trace++;
switch (trace)
{
case 5: 
{
unsigned short v50;
v50 = v3 ();
history[history_index++] = (int)v50;
}
break;
case 6: 
{
unsigned short v51;
v51 = (*v4) ();
history[history_index++] = (int)v51;
}
break;
case 7: 
return 62451;
case 8: 
return 48916;
case 9: 
{
unsigned short v52;
v52 = (*v4) ();
history[history_index++] = (int)v52;
}
break;
case 10: 
return 57554;
case 11: 
return v49;
default: abort ();
}
}
}
}
