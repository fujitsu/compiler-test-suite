#include <stdlib.h>
extern unsigned int v1 (unsigned char);
extern unsigned int (*v2) (unsigned char);
extern unsigned char v3 (signed char, unsigned char, signed char);
extern unsigned char (*v4) (signed char, unsigned char, signed char);
signed char v5 (signed char, signed int);
signed char (*v6) (signed char, signed int) = v5;
extern signed char v7 (signed short);
extern signed char (*v8) (signed short);
unsigned int v9 (signed int);
unsigned int (*v10) (signed int) = v9;
unsigned int v11 (void);
unsigned int (*v12) (void) = v11;
extern signed short v13 (signed int, signed short, signed short, signed int);
extern signed short (*v14) (signed int, signed short, signed short, signed int);
extern signed int v15 (unsigned int, signed short, unsigned char, unsigned short);
extern signed int (*v16) (unsigned int, signed short, unsigned char, unsigned short);
extern signed char v17 (unsigned short, signed short, unsigned char, unsigned int);
extern signed char (*v18) (unsigned short, signed short, unsigned char, unsigned int);
extern unsigned int v19 (signed int, signed char);
extern unsigned int (*v20) (signed int, signed char);
extern void v21 (signed short, signed char);
extern void (*v22) (signed short, signed char);
extern unsigned int v23 (void);
extern unsigned int (*v24) (void);
extern unsigned int v25 (unsigned short, unsigned int, unsigned int);
extern unsigned int (*v26) (unsigned short, unsigned int, unsigned int);
extern signed char v27 (signed char, signed int, unsigned char, signed char);
extern signed char (*v28) (signed char, signed int, unsigned char, signed char);
extern signed short v29 (unsigned short);
extern signed short (*v30) (unsigned short);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v58 = 2;
signed char v57 = -3;
signed char v56 = -4;

unsigned int v11 (void)
{
{
for (;;) {
unsigned short v61 = 7;
unsigned short v60 = 1;
signed short v59 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v9 (signed int v62)
{
history[history_index++] = (int)v62;
{
for (;;) {
signed short v65 = 1;
unsigned char v64 = 5;
signed char v63 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v5 (signed char v66, signed int v67)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
unsigned int v70 = 3U;
unsigned int v69 = 7U;
unsigned int v68 = 4U;
trace++;
switch (trace)
{
case 3: 
{
signed short v71;
signed char v72;
v71 = -2 + -4;
v72 = v66 + v66;
v21 (v71, v72);
}
break;
case 5: 
{
unsigned short v73;
signed short v74;
unsigned char v75;
unsigned int v76;
signed char v77;
v73 = 3 - 4;
v74 = 3 + -3;
v75 = 3 - 0;
v76 = v68 + 7U;
v77 = v17 (v73, v74, v75, v76);
history[history_index++] = (int)v77;
}
break;
case 7: 
return -4;
default: abort ();
}
}
}
}
