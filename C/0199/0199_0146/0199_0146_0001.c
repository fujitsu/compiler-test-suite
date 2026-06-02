#include <stdlib.h>
extern signed char v1 (unsigned char, unsigned int, unsigned short, unsigned short);
extern signed char (*v2) (unsigned char, unsigned int, unsigned short, unsigned short);
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern signed int v5 (unsigned short);
extern signed int (*v6) (unsigned short);
extern signed int v7 (signed char, unsigned char, unsigned char, signed char);
extern signed int (*v8) (signed char, unsigned char, unsigned char, signed char);
extern void v9 (unsigned char);
extern void (*v10) (unsigned char);
extern unsigned short v11 (signed int, unsigned short);
extern unsigned short (*v12) (signed int, unsigned short);
extern unsigned int v13 (unsigned int, unsigned int);
extern unsigned int (*v14) (unsigned int, unsigned int);
void v15 (unsigned short);
void (*v16) (unsigned short) = v15;
extern signed int v17 (signed char, unsigned char, signed int, signed short);
extern signed int (*v18) (signed char, unsigned char, signed int, signed short);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned char v21 (void);
extern unsigned char (*v22) (void);
signed int v23 (void);
signed int (*v24) (void) = v23;
unsigned char v25 (unsigned char, signed short);
unsigned char (*v26) (unsigned char, signed short) = v25;
extern unsigned int v27 (signed short, signed int, unsigned int, signed int);
extern unsigned int (*v28) (signed short, signed int, unsigned int, signed int);
extern signed char v29 (void);
extern signed char (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v49 = 3;
signed int v48 = 1;
unsigned char v47 = 3;

unsigned char v25 (unsigned char v50, signed short v51)
{
history[history_index++] = (int)v50;
history[history_index++] = (int)v51;
{
for (;;) {
unsigned short v54 = 2;
signed int v53 = 1;
unsigned int v52 = 1U;
trace++;
switch (trace)
{
case 1: 
{
signed short v55;
signed int v56;
unsigned int v57;
signed int v58;
unsigned int v59;
v55 = v51 - -1;
v56 = v53 - -2;
v57 = v52 + 4U;
v58 = v53 - -4;
v59 = v27 (v55, v56, v57, v58);
history[history_index++] = (int)v59;
}
break;
case 13: 
return 1;
default: abort ();
}
}
}
}

signed int v23 (void)
{
{
for (;;) {
unsigned int v62 = 2U;
signed short v61 = 2;
unsigned int v60 = 5U;
trace++;
switch (trace)
{
case 8: 
return -2;
case 10: 
return 3;
default: abort ();
}
}
}
}

void v15 (unsigned short v63)
{
history[history_index++] = (int)v63;
{
for (;;) {
signed short v66 = 0;
signed short v65 = 2;
unsigned int v64 = 6U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
