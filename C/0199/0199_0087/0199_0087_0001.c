#include <stdlib.h>
unsigned char v1 (void);
unsigned char (*v2) (void) = v1;
extern void v3 (signed short, unsigned char);
extern void (*v4) (signed short, unsigned char);
extern void v5 (signed short, unsigned short, unsigned char, signed char);
extern void (*v6) (signed short, unsigned short, unsigned char, signed char);
extern unsigned short v7 (signed char, unsigned char, unsigned int, signed char);
extern unsigned short (*v8) (signed char, unsigned char, unsigned int, signed char);
extern unsigned char v9 (unsigned char, unsigned int, unsigned char, unsigned int);
extern unsigned char (*v10) (unsigned char, unsigned int, unsigned char, unsigned int);
extern signed char v11 (unsigned short, signed int);
extern signed char (*v12) (unsigned short, signed int);
extern signed int v13 (signed short, signed int);
extern signed int (*v14) (signed short, signed int);
extern unsigned short v15 (unsigned short, signed char);
extern unsigned short (*v16) (unsigned short, signed char);
extern unsigned short v17 (unsigned char);
extern unsigned short (*v18) (unsigned char);
extern void v19 (void);
extern void (*v20) (void);
extern signed int v21 (unsigned char, unsigned short, signed short);
extern signed int (*v22) (unsigned char, unsigned short, signed short);
unsigned int v23 (signed int, unsigned short);
unsigned int (*v24) (signed int, unsigned short) = v23;
extern void v25 (unsigned int, signed short);
extern void (*v26) (unsigned int, signed short);
extern unsigned short v27 (signed char, unsigned short, unsigned short, unsigned int);
extern unsigned short (*v28) (signed char, unsigned short, unsigned short, unsigned int);
extern unsigned char v29 (signed short, signed int);
extern unsigned char (*v30) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned char v60 = 2;
signed char v59 = 1;
unsigned int v58 = 7U;

unsigned int v23 (signed int v61, unsigned short v62)
{
history[history_index++] = (int)v61;
history[history_index++] = (int)v62;
{
for (;;) {
unsigned int v65 = 3U;
signed int v64 = 3;
signed short v63 = -4;
trace++;
switch (trace)
{
case 4: 
return v65;
case 6: 
{
signed char v66;
unsigned short v67;
unsigned short v68;
unsigned int v69;
unsigned short v70;
v66 = 3 + 1;
v67 = 5 - 5;
v68 = 1 - v62;
v69 = v65 - v65;
v70 = v27 (v66, v67, v68, v69);
history[history_index++] = (int)v70;
}
break;
case 8: 
{
signed char v71;
unsigned short v72;
unsigned short v73;
unsigned int v74;
unsigned short v75;
v71 = 1 + -2;
v72 = 3 - 3;
v73 = 7 - 7;
v74 = v65 - 2U;
v75 = v27 (v71, v72, v73, v74);
history[history_index++] = (int)v75;
}
break;
case 10: 
return v65;
default: abort ();
}
}
}
}

unsigned char v1 (void)
{
{
for (;;) {
signed int v78 = 0;
unsigned int v77 = 4U;
signed char v76 = 1;
trace++;
switch (trace)
{
case 0: 
{
signed short v79;
unsigned short v80;
unsigned char v81;
signed char v82;
v79 = -3 + 0;
v80 = 0 - 2;
v81 = 7 - 5;
v82 = 0 - v76;
v5 (v79, v80, v81, v82);
}
break;
case 2: 
{
unsigned short v83;
signed char v84;
unsigned short v85;
v83 = 6 - 4;
v84 = 2 + v76;
v85 = v15 (v83, v84);
history[history_index++] = (int)v85;
}
break;
case 12: 
return 4;
default: abort ();
}
}
}
}
