#include <stdlib.h>
extern signed char v1 (void);
extern signed char (*v2) (void);
extern void v3 (signed short, unsigned short, unsigned int);
extern void (*v4) (signed short, unsigned short, unsigned int);
void v5 (void);
void (*v6) (void) = v5;
extern signed char v7 (unsigned int);
extern signed char (*v8) (unsigned int);
extern unsigned int v9 (unsigned int, signed int);
extern unsigned int (*v10) (unsigned int, signed int);
signed short v11 (signed char, signed short, signed char, signed char);
signed short (*v12) (signed char, signed short, signed char, signed char) = v11;
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern unsigned short v15 (unsigned int, signed int, signed short, unsigned int);
extern unsigned short (*v16) (unsigned int, signed int, signed short, unsigned int);
extern unsigned int v17 (unsigned char);
extern unsigned int (*v18) (unsigned char);
extern signed short v19 (void);
extern signed short (*v20) (void);
extern unsigned short v21 (void);
extern unsigned short (*v22) (void);
extern signed short v25 (unsigned int, signed char, unsigned short);
extern signed short (*v26) (unsigned int, signed char, unsigned short);
signed char v29 (signed short, signed short, signed int);
signed char (*v30) (signed short, signed short, signed int) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v56 = 7;
unsigned short v55 = 7;
unsigned short v54 = 7;

signed char v29 (signed short v57, signed short v58, signed int v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
unsigned int v62 = 5U;
unsigned int v61 = 6U;
unsigned char v60 = 1;
trace++;
switch (trace)
{
case 1: 
return -4;
default: abort ();
}
}
}
}

signed short v11 (signed char v63, signed short v64, signed char v65, signed char v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed int v69 = -1;
signed char v68 = -4;
unsigned short v67 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

void v5 (void)
{
{
for (;;) {
signed short v72 = 0;
signed short v71 = -1;
signed int v70 = 1;
trace++;
switch (trace)
{
case 10: 
{
unsigned int v73;
signed char v74;
unsigned short v75;
signed short v76;
v73 = 5U + 6U;
v74 = 1 + -3;
v75 = 2 + 3;
v76 = v25 (v73, v74, v75);
history[history_index++] = (int)v76;
}
break;
case 12: 
return;
default: abort ();
}
}
}
}
