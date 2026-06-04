#include <stdlib.h>
signed int v1 (unsigned int, signed char);
signed int (*v2) (unsigned int, signed char) = v1;
extern unsigned char v3 (signed int, signed short);
extern unsigned char (*v4) (signed int, signed short);
unsigned char v5 (unsigned short, unsigned char, signed int);
unsigned char (*v6) (unsigned short, unsigned char, signed int) = v5;
extern signed char v7 (signed short, unsigned int);
extern signed char (*v8) (signed short, unsigned int);
extern void v9 (signed int, unsigned char, unsigned int);
extern void (*v10) (signed int, unsigned char, unsigned int);
void v11 (unsigned int, unsigned int, signed short, unsigned short);
void (*v12) (unsigned int, unsigned int, signed short, unsigned short) = v11;
extern unsigned short v13 (signed short);
extern unsigned short (*v14) (signed short);
extern void v17 (unsigned char);
extern void (*v18) (unsigned char);
extern unsigned char v19 (unsigned char, unsigned short, signed short);
extern unsigned char (*v20) (unsigned char, unsigned short, signed short);
extern signed char v21 (signed short, unsigned int);
extern signed char (*v22) (signed short, unsigned int);
extern unsigned short v23 (signed char, unsigned char, signed int, unsigned short);
extern unsigned short (*v24) (signed char, unsigned char, signed int, unsigned short);
extern signed int v25 (void);
extern signed int (*v26) (void);
extern unsigned short v27 (signed char);
extern unsigned short (*v28) (signed char);
extern unsigned short v29 (unsigned char);
extern unsigned short (*v30) (unsigned char);
extern int history[];
extern int history_index;
extern int trace;
signed short v50 = 1;
signed char v49 = -2;
signed int v48 = 1;

void v11 (unsigned int v51, unsigned int v52, signed short v53, unsigned short v54)
{
history[history_index++] = (int)v51;
history[history_index++] = (int)v52;
history[history_index++] = (int)v53;
history[history_index++] = (int)v54;
{
for (;;) {
signed short v57 = 1;
unsigned short v56 = 6;
signed char v55 = 0;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v5 (unsigned short v58, unsigned char v59, signed int v60)
{
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
history[history_index++] = (int)v60;
{
for (;;) {
signed short v63 = 1;
signed short v62 = 3;
unsigned short v61 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v1 (unsigned int v64, signed char v65)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
{
for (;;) {
unsigned int v68 = 1U;
signed int v67 = -2;
unsigned char v66 = 6;
trace++;
switch (trace)
{
case 0: 
{
signed int v69;
v69 = v25 ();
history[history_index++] = (int)v69;
}
break;
case 2: 
{
signed short v70;
unsigned int v71;
signed char v72;
v70 = -2 - -1;
v71 = v68 + 7U;
v72 = v7 (v70, v71);
history[history_index++] = (int)v72;
}
break;
case 14: 
return 3;
default: abort ();
}
}
}
}
