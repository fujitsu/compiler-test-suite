#include <stdlib.h>
unsigned short v1 (unsigned short, signed short, unsigned char, unsigned short);
unsigned short (*v2) (unsigned short, signed short, unsigned char, unsigned short) = v1;
extern signed char v3 (signed short, signed short, unsigned short);
extern signed char (*v4) (signed short, signed short, unsigned short);
extern signed int v5 (signed short, unsigned short);
extern signed int (*v6) (signed short, unsigned short);
extern signed char v7 (unsigned char, signed short);
extern signed char (*v8) (unsigned char, signed short);
unsigned short v9 (void);
unsigned short (*v10) (void) = v9;
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
signed char v13 (signed int);
signed char (*v14) (signed int) = v13;
extern signed char v15 (unsigned char, unsigned char);
extern signed char (*v16) (unsigned char, unsigned char);
extern unsigned int v19 (signed int, unsigned char);
extern unsigned int (*v20) (signed int, unsigned char);
extern unsigned int v21 (signed int);
extern unsigned int (*v22) (signed int);
extern signed int v23 (signed char, unsigned int, unsigned short);
extern signed int (*v24) (signed char, unsigned int, unsigned short);
extern unsigned short v25 (unsigned short, unsigned int);
extern unsigned short (*v26) (unsigned short, unsigned int);
extern unsigned char v27 (signed short, unsigned char, signed char);
extern unsigned char (*v28) (signed short, unsigned char, signed char);
extern signed char v29 (unsigned int, unsigned int, unsigned short, signed int);
extern signed char (*v30) (unsigned int, unsigned int, unsigned short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v53 = -4;
signed char v52 = -2;
signed char v51 = 0;

signed char v13 (signed int v54)
{
history[history_index++] = (int)v54;
{
for (;;) {
signed char v57 = -1;
unsigned short v56 = 1;
signed short v55 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v9 (void)
{
{
for (;;) {
signed int v60 = -2;
unsigned int v59 = 6U;
unsigned short v58 = 4;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v1 (unsigned short v61, signed short v62, unsigned char v63, unsigned short v64)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
{
for (;;) {
signed short v67 = -3;
unsigned char v66 = 6;
signed short v65 = 3;
trace++;
switch (trace)
{
case 0: 
{
signed int v68;
unsigned char v69;
unsigned int v70;
v68 = 3 - -1;
v69 = v63 - v63;
v70 = v19 (v68, v69);
history[history_index++] = (int)v70;
}
break;
case 6: 
{
signed int v71;
unsigned char v72;
unsigned int v73;
v71 = 1 + -2;
v72 = v66 + 6;
v73 = v19 (v71, v72);
history[history_index++] = (int)v73;
}
break;
case 14: 
return 7;
default: abort ();
}
}
}
}
