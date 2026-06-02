#include <stdlib.h>
extern void v1 (void);
extern void (*v2) (void);
extern signed char v3 (signed short, unsigned int);
extern signed char (*v4) (signed short, unsigned int);
extern signed short v5 (signed char);
extern signed short (*v6) (signed char);
extern signed int v7 (unsigned char);
extern signed int (*v8) (unsigned char);
extern signed short v9 (unsigned char, unsigned short, unsigned char);
extern signed short (*v10) (unsigned char, unsigned short, unsigned char);
extern void v11 (unsigned int);
extern void (*v12) (unsigned int);
unsigned int v13 (unsigned char, unsigned int, unsigned char, signed short);
unsigned int (*v14) (unsigned char, unsigned int, unsigned char, signed short) = v13;
extern unsigned int v15 (signed short, signed int);
extern unsigned int (*v16) (signed short, signed int);
extern unsigned short v17 (void);
extern unsigned short (*v18) (void);
extern signed int v19 (signed int, signed int, signed char, signed int);
extern signed int (*v20) (signed int, signed int, signed char, signed int);
signed short v21 (void);
signed short (*v22) (void) = v21;
extern signed int v23 (void);
extern signed int (*v24) (void);
extern void v25 (signed short);
extern void (*v26) (signed short);
unsigned short v27 (unsigned int, signed int);
unsigned short (*v28) (unsigned int, signed int) = v27;
extern signed short v29 (void);
extern signed short (*v30) (void);
extern int history[];
extern int history_index;
extern int trace;
unsigned int v60 = 1U;
unsigned short v59 = 3;
signed int v58 = 3;

unsigned short v27 (unsigned int v61, signed int v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned char v65 = 3;
unsigned int v64 = 7U;
signed char v63 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v21 (void)
{
{
for (;;) {
unsigned char v68 = 0;
signed short v67 = -2;
unsigned char v66 = 1;
trace++;
switch (trace)
{
case 1: 
{
signed short v69;
v69 = v29 ();
history[history_index++] = (int)v69;
}
break;
case 3: 
{
unsigned char v70;
unsigned short v71;
unsigned char v72;
signed short v73;
v70 = v66 + v68;
v71 = 6 - 5;
v72 = v66 + v66;
v73 = v9 (v70, v71, v72);
history[history_index++] = (int)v73;
}
break;
case 11: 
return v67;
default: abort ();
}
}
}
}

unsigned int v13 (unsigned char v74, unsigned int v75, unsigned char v76, signed short v77)
{
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
signed short v80 = -2;
signed short v79 = 1;
signed char v78 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
