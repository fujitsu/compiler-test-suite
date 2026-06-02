#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern unsigned short v3 (unsigned char);
extern unsigned short (*v4) (unsigned char);
extern signed int v5 (signed int, signed int, signed char);
extern signed int (*v6) (signed int, signed int, signed char);
unsigned int v7 (signed short);
unsigned int (*v8) (signed short) = v7;
extern signed int v9 (unsigned short);
extern signed int (*v10) (unsigned short);
extern unsigned int v11 (signed char, signed char, unsigned short, signed char);
extern unsigned int (*v12) (signed char, signed char, unsigned short, signed char);
extern signed char v13 (unsigned int, unsigned char, signed char);
extern signed char (*v14) (unsigned int, unsigned char, signed char);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern unsigned short v19 (void);
extern unsigned short (*v20) (void);
extern unsigned char v21 (signed int, unsigned short, signed char);
extern unsigned char (*v22) (signed int, unsigned short, signed char);
signed char v23 (void);
signed char (*v24) (void) = v23;
extern unsigned short v25 (signed int);
extern unsigned short (*v26) (signed int);
extern unsigned char v27 (void);
extern unsigned char (*v28) (void);
unsigned short v29 (void);
unsigned short (*v30) (void) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned char v90 = 0;
unsigned short v89 = 5;
unsigned int v88 = 4U;

unsigned short v29 (void)
{
{
for (;;) {
unsigned short v93 = 3;
unsigned short v92 = 7;
unsigned char v91 = 0;
trace++;
switch (trace)
{
case 1: 
return v92;
case 4: 
return 0;
case 6: 
return v93;
default: abort ();
}
}
}
}

signed char v23 (void)
{
{
for (;;) {
unsigned int v96 = 1U;
signed char v95 = -4;
signed short v94 = -4;
trace++;
switch (trace)
{
case 3: 
{
unsigned short v97;
v97 = v29 ();
history[history_index++] = (int)v97;
}
break;
case 5: 
{
unsigned short v98;
v98 = v29 ();
history[history_index++] = (int)v98;
}
break;
case 7: 
return 3;
default: abort ();
}
}
}
}

unsigned int v7 (signed short v99)
{
history[history_index++] = (int)v99;
{
for (;;) {
signed char v102 = -1;
unsigned int v101 = 0U;
signed char v100 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
