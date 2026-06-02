#include <stdlib.h>
extern signed char v3 (signed char);
extern signed char (*v4) (signed char);
extern unsigned int v5 (void);
extern unsigned int (*v6) (void);
unsigned int v7 (signed char);
unsigned int (*v8) (signed char) = v7;
extern unsigned char v9 (unsigned int, unsigned int);
extern unsigned char (*v10) (unsigned int, unsigned int);
extern void v11 (unsigned int, unsigned char, signed char, unsigned char);
extern void (*v12) (unsigned int, unsigned char, signed char, unsigned char);
extern signed int v13 (unsigned short, signed char);
extern signed int (*v14) (unsigned short, signed char);
extern signed short v15 (signed char, unsigned short);
extern signed short (*v16) (signed char, unsigned short);
extern unsigned char v17 (signed short, signed char, signed short);
extern unsigned char (*v18) (signed short, signed char, signed short);
extern unsigned char v19 (unsigned int, unsigned int, unsigned short, unsigned char);
extern unsigned char (*v20) (unsigned int, unsigned int, unsigned short, unsigned char);
extern signed char v21 (unsigned short, signed int, signed char);
extern signed char (*v22) (unsigned short, signed int, signed char);
extern signed int v23 (unsigned int, signed int, unsigned short, unsigned char);
extern signed int (*v24) (unsigned int, signed int, unsigned short, unsigned char);
unsigned short v25 (signed short);
unsigned short (*v26) (signed short) = v25;
extern unsigned char v27 (unsigned short, signed int, unsigned char);
extern unsigned char (*v28) (unsigned short, signed int, unsigned char);
extern unsigned int v29 (unsigned char, signed char);
extern unsigned int (*v30) (unsigned char, signed char);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v60 = 4;
signed char v59 = 3;
signed int v58 = -2;

unsigned short v25 (signed short v61)
{
history[history_index++] = (int)v61;
{
for (;;) {
unsigned short v64 = 3;
unsigned char v63 = 1;
unsigned char v62 = 1;
trace++;
switch (trace)
{
case 1: 
{
unsigned short v65;
signed char v66;
signed int v67;
v65 = v64 + 5;
v66 = -4 - -1;
v67 = v13 (v65, v66);
history[history_index++] = (int)v67;
}
break;
case 3: 
{
unsigned short v68;
signed char v69;
signed int v70;
v68 = 3 - 0;
v69 = -1 + -2;
v70 = v13 (v68, v69);
history[history_index++] = (int)v70;
}
break;
case 5: 
{
unsigned short v71;
signed char v72;
signed int v73;
v71 = 3 + v64;
v72 = -1 - -4;
v73 = v13 (v71, v72);
history[history_index++] = (int)v73;
}
break;
case 7: 
{
unsigned short v74;
signed char v75;
signed int v76;
v74 = v64 + v64;
v75 = -2 + -1;
v76 = v13 (v74, v75);
history[history_index++] = (int)v76;
}
break;
case 9: 
{
unsigned short v77;
signed char v78;
signed int v79;
v77 = 3 + 0;
v78 = 2 + -3;
v79 = v13 (v77, v78);
history[history_index++] = (int)v79;
}
break;
case 11: 
return v64;
default: abort ();
}
}
}
}

unsigned int v7 (signed char v80)
{
history[history_index++] = (int)v80;
{
for (;;) {
signed char v83 = 3;
signed int v82 = -4;
unsigned char v81 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
