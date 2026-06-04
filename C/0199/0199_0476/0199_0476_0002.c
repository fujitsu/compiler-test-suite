#include <stdlib.h>
extern unsigned char v1 (unsigned int, signed char, signed int, signed char);
extern unsigned char (*v2) (unsigned int, signed char, signed int, signed char);
extern signed char v5 (void);
extern signed char (*v6) (void);
extern unsigned char v7 (unsigned short);
extern unsigned char (*v8) (unsigned short);
extern void v9 (unsigned short);
extern void (*v10) (unsigned short);
unsigned short v11 (signed char);
unsigned short (*v12) (signed char) = v11;
extern unsigned int v13 (unsigned char, unsigned short, signed char, unsigned int);
extern unsigned int (*v14) (unsigned char, unsigned short, signed char, unsigned int);
extern signed char v15 (signed int);
extern signed char (*v16) (signed int);
extern unsigned char v17 (signed short);
extern unsigned char (*v18) (signed short);
signed char v19 (signed short);
signed char (*v20) (signed short) = v19;
extern signed int v21 (signed char);
extern signed int (*v22) (signed char);
extern unsigned char v23 (signed int, signed char, signed char);
extern unsigned char (*v24) (signed int, signed char, signed char);
void v25 (void);
void (*v26) (void) = v25;
extern unsigned int v27 (signed short, unsigned char, unsigned char, signed int);
extern unsigned int (*v28) (signed short, unsigned char, unsigned char, signed int);
extern signed int v29 (signed char);
extern signed int (*v30) (signed char);
extern int history[];
extern int history_index;
extern int trace;
signed char v66 = -4;
unsigned char v65 = 3;
signed char v64 = -1;

void v25 (void)
{
{
for (;;) {
unsigned int v69 = 3U;
unsigned int v68 = 4U;
signed char v67 = -4;
trace++;
switch (trace)
{
case 7: 
return;
default: abort ();
}
}
}
}

signed char v19 (signed short v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
unsigned char v73 = 1;
unsigned char v72 = 4;
unsigned short v71 = 6;
trace++;
switch (trace)
{
case 3: 
{
signed int v74;
signed char v75;
signed char v76;
unsigned char v77;
v74 = -3 + -4;
v75 = 3 + 3;
v76 = 0 + -2;
v77 = v23 (v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 9: 
return -2;
default: abort ();
}
}
}
}

unsigned short v11 (signed char v78)
{
history[history_index++] = (int)v78;
{
for (;;) {
signed short v81 = -3;
unsigned char v80 = 5;
signed int v79 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
