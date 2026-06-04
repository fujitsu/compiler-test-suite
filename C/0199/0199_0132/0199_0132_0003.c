#include <stdlib.h>
extern signed int v1 (unsigned short);
extern signed int (*v2) (unsigned short);
extern unsigned short v3 (signed int);
extern unsigned short (*v4) (signed int);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
extern signed short v7 (unsigned int, unsigned char, signed short, signed char);
extern signed short (*v8) (unsigned int, unsigned char, signed short, signed char);
extern void v9 (void);
extern void (*v10) (void);
extern unsigned int v11 (unsigned short, signed char, signed int);
extern unsigned int (*v12) (unsigned short, signed char, signed int);
extern unsigned char v13 (unsigned int, unsigned char, signed int, signed int);
extern unsigned char (*v14) (unsigned int, unsigned char, signed int, signed int);
extern signed int v15 (signed char);
extern signed int (*v16) (signed char);
extern unsigned int v17 (signed int);
extern unsigned int (*v18) (signed int);
extern void v19 (void);
extern void (*v20) (void);
void v21 (signed short, unsigned int);
void (*v22) (signed short, unsigned int) = v21;
unsigned short v23 (unsigned char, unsigned int);
unsigned short (*v24) (unsigned char, unsigned int) = v23;
extern unsigned int v25 (unsigned int, signed char, signed int, signed int);
extern unsigned int (*v26) (unsigned int, signed char, signed int, signed int);
extern void v27 (signed int);
extern void (*v28) (signed int);
extern signed short v29 (signed char, unsigned short);
extern signed short (*v30) (signed char, unsigned short);
extern int history[];
extern int history_index;
extern int trace;
signed int v94 = 1;
signed short v93 = 0;
signed int v92 = 3;

unsigned short v23 (unsigned char v95, unsigned int v96)
{
history[history_index++] = (int)v95;
history[history_index++] = (int)v96;
{
for (;;) {
unsigned int v99 = 3U;
signed short v98 = -4;
unsigned int v97 = 5U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v21 (signed short v100, unsigned int v101)
{
history[history_index++] = (int)v100;
history[history_index++] = (int)v101;
{
for (;;) {
unsigned int v104 = 2U;
signed char v103 = -1;
signed int v102 = -1;
trace++;
switch (trace)
{
case 1: 
{
v9 ();
}
break;
case 3: 
{
v9 ();
}
break;
case 15: 
return;
default: abort ();
}
}
}
}
