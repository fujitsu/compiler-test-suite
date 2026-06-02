#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern void v3 (signed int, signed short, signed short, unsigned int);
extern void (*v4) (signed int, signed short, signed short, unsigned int);
extern signed int v5 (signed char, signed int, unsigned short);
extern signed int (*v6) (signed char, signed int, unsigned short);
extern void v7 (void);
extern void (*v8) (void);
extern unsigned short v9 (signed int, signed short, signed char, unsigned char);
extern unsigned short (*v10) (signed int, signed short, signed char, unsigned char);
signed int v11 (void);
signed int (*v12) (void) = v11;
extern unsigned short v13 (unsigned int);
extern unsigned short (*v14) (unsigned int);
signed int v15 (unsigned short);
signed int (*v16) (unsigned short) = v15;
extern unsigned short v17 (signed int, signed char);
extern unsigned short (*v18) (signed int, signed char);
extern signed int v19 (signed char);
extern signed int (*v20) (signed char);
extern signed int v21 (unsigned short, signed int, signed int);
extern signed int (*v22) (unsigned short, signed int, signed int);
extern unsigned int v23 (signed char, unsigned char, signed int);
extern unsigned int (*v24) (signed char, unsigned char, signed int);
extern void v25 (signed char, unsigned short, unsigned char);
extern void (*v26) (signed char, unsigned short, unsigned char);
extern signed short v27 (signed int);
extern signed short (*v28) (signed int);
extern void v29 (unsigned char, signed int, signed int);
extern void (*v30) (unsigned char, signed int, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v100 = 3;
unsigned char v99 = 7;
unsigned short v98 = 7;

signed int v15 (unsigned short v101)
{
history[history_index++] = (int)v101;
{
for (;;) {
unsigned short v104 = 0;
unsigned char v103 = 0;
signed int v102 = -2;
trace++;
switch (trace)
{
case 4: 
return v102;
case 6: 
return -3;
case 8: 
return -1;
default: abort ();
}
}
}
}

signed int v11 (void)
{
{
for (;;) {
signed char v107 = 3;
signed char v106 = 3;
unsigned int v105 = 7U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
unsigned short v110 = 7;
signed char v109 = 1;
signed char v108 = -4;
trace++;
switch (trace)
{
case 0: 
{
signed char v111;
signed int v112;
v111 = v109 - -4;
v112 = v19 (v111);
history[history_index++] = (int)v112;
}
break;
case 2: 
{
v7 ();
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}
