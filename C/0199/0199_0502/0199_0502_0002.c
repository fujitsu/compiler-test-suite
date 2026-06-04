#include <stdlib.h>
extern unsigned char v1 (signed short);
extern unsigned char (*v2) (signed short);
extern unsigned char v3 (signed short, signed char, unsigned char);
extern unsigned char (*v4) (signed short, signed char, unsigned char);
extern unsigned int v5 (unsigned char);
extern unsigned int (*v6) (unsigned char);
extern signed short v7 (signed int, signed int, signed int);
extern signed short (*v8) (signed int, signed int, signed int);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
extern signed int v11 (signed short, unsigned short, unsigned char);
extern signed int (*v12) (signed short, unsigned short, unsigned char);
extern unsigned int v13 (signed short, signed char, unsigned int);
extern unsigned int (*v14) (signed short, signed char, unsigned int);
unsigned char v15 (void);
unsigned char (*v16) (void) = v15;
extern unsigned short v17 (signed short, unsigned int);
extern unsigned short (*v18) (signed short, unsigned int);
extern unsigned int v19 (unsigned char);
extern unsigned int (*v20) (unsigned char);
signed int v21 (unsigned int, signed char, signed short);
signed int (*v22) (unsigned int, signed char, signed short) = v21;
extern signed short v25 (signed short, unsigned int, unsigned char, unsigned int);
extern signed short (*v26) (signed short, unsigned int, unsigned char, unsigned int);
extern unsigned short v27 (signed short, unsigned short, unsigned char);
extern unsigned short (*v28) (signed short, unsigned short, unsigned char);
signed int v29 (signed int, signed int, signed short);
signed int (*v30) (signed int, signed int, signed short) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned int v95 = 5U;
unsigned short v94 = 7;
signed char v93 = -4;

signed int v29 (signed int v96, signed int v97, signed short v98)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
history[history_index++] = (int)v98;
{
for (;;) {
unsigned int v101 = 1U;
signed int v100 = 1;
unsigned char v99 = 0;
trace++;
switch (trace)
{
case 3: 
return v96;
case 5: 
return 0;
case 7: 
return v96;
case 9: 
return v96;
case 11: 
return v100;
default: abort ();
}
}
}
}

signed int v21 (unsigned int v102, signed char v103, signed short v104)
{
history[history_index++] = (int)v102;
history[history_index++] = (int)v103;
history[history_index++] = (int)v104;
{
for (;;) {
signed short v107 = -4;
unsigned short v106 = 2;
signed int v105 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v15 (void)
{
{
for (;;) {
unsigned int v110 = 6U;
signed short v109 = 2;
signed short v108 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
