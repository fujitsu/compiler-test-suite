#include <stdlib.h>
extern signed short v1 (void);
extern signed short (*v2) (void);
extern unsigned int v3 (unsigned int);
extern unsigned int (*v4) (unsigned int);
extern unsigned short v5 (unsigned short, signed int, unsigned int);
extern unsigned short (*v6) (unsigned short, signed int, unsigned int);
signed int v7 (void);
signed int (*v8) (void) = v7;
extern unsigned char v9 (void);
extern unsigned char (*v10) (void);
extern unsigned char v11 (signed int, signed char);
extern unsigned char (*v12) (signed int, signed char);
extern void v13 (void);
extern void (*v14) (void);
extern unsigned short v15 (signed int, unsigned char);
extern unsigned short (*v16) (signed int, unsigned char);
extern signed char v17 (signed char, unsigned char);
extern signed char (*v18) (signed char, unsigned char);
extern unsigned int v19 (signed char, signed int, signed char);
extern unsigned int (*v20) (signed char, signed int, signed char);
signed char v21 (void);
signed char (*v22) (void) = v21;
extern signed short v23 (unsigned int, signed int, signed int, unsigned int);
extern signed short (*v24) (unsigned int, signed int, signed int, unsigned int);
extern signed int v25 (signed short);
extern signed int (*v26) (signed short);
unsigned char v27 (signed short, unsigned short);
unsigned char (*v28) (signed short, unsigned short) = v27;
extern void v29 (void);
extern void (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v95 = 6U;
signed char v94 = 2;
unsigned char v93 = 5;

unsigned char v27 (signed short v96, unsigned short v97)
{
history[history_index++] = (int)v96;
history[history_index++] = (int)v97;
{
for (;;) {
unsigned short v100 = 3;
signed int v99 = -1;
unsigned char v98 = 3;
trace++;
switch (trace)
{
case 1: 
return 3;
case 11: 
return v98;
default: abort ();
}
}
}
}

signed char v21 (void)
{
{
for (;;) {
unsigned int v103 = 4U;
signed int v102 = 0;
unsigned short v101 = 0;
trace++;
switch (trace)
{
case 3: 
return -1;
case 6: 
return -3;
case 8: 
return 2;
default: abort ();
}
}
}
}

signed int v7 (void)
{
{
for (;;) {
unsigned int v106 = 5U;
unsigned char v105 = 4;
signed char v104 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
