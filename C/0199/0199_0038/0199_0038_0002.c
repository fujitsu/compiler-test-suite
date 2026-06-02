#include <stdlib.h>
extern signed char v1 (unsigned int, signed short);
extern signed char (*v2) (unsigned int, signed short);
extern unsigned short v3 (signed char);
extern unsigned short (*v4) (signed char);
unsigned short v5 (unsigned char);
unsigned short (*v6) (unsigned char) = v5;
extern signed short v7 (void);
extern signed short (*v8) (void);
signed char v9 (void);
signed char (*v10) (void) = v9;
extern unsigned char v11 (unsigned short);
extern unsigned char (*v12) (unsigned short);
extern unsigned int v13 (void);
extern unsigned int (*v14) (void);
extern signed char v15 (void);
extern signed char (*v16) (void);
extern void v17 (void);
extern void (*v18) (void);
extern signed int v19 (signed short, unsigned char);
extern signed int (*v20) (signed short, unsigned char);
unsigned int v21 (void);
unsigned int (*v22) (void) = v21;
extern unsigned char v23 (void);
extern unsigned char (*v24) (void);
extern unsigned int v25 (unsigned short, unsigned char, signed char, signed int);
extern unsigned int (*v26) (unsigned short, unsigned char, signed char, signed int);
extern unsigned int v27 (signed int, signed char, signed int);
extern unsigned int (*v28) (signed int, signed char, signed int);
extern signed int v29 (signed int);
extern signed int (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
unsigned short v63 = 5;
signed char v62 = 2;
signed char v61 = 2;

unsigned int v21 (void)
{
{
for (;;) {
signed short v66 = 3;
unsigned int v65 = 2U;
unsigned int v64 = 3U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v9 (void)
{
{
for (;;) {
signed int v69 = 2;
signed int v68 = 2;
signed int v67 = 1;
trace++;
switch (trace)
{
case 2: 
return -4;
case 4: 
{
unsigned short v70;
unsigned char v71;
v70 = 1 + 2;
v71 = v11 (v70);
history[history_index++] = (int)v71;
}
break;
case 6: 
{
unsigned short v72;
unsigned char v73;
v72 = 4 - 1;
v73 = v11 (v72);
history[history_index++] = (int)v73;
}
break;
case 14: 
return -2;
default: abort ();
}
}
}
}

unsigned short v5 (unsigned char v74)
{
history[history_index++] = (int)v74;
{
for (;;) {
signed short v77 = -4;
unsigned int v76 = 6U;
unsigned int v75 = 7U;
trace++;
switch (trace)
{
case 8: 
{
signed int v78;
signed char v79;
signed int v80;
unsigned int v81;
v78 = -3 - -1;
v79 = 0 + -1;
v80 = -3 + -4;
v81 = v27 (v78, v79, v80);
history[history_index++] = (int)v81;
}
break;
case 10: 
{
signed int v82;
signed char v83;
signed int v84;
unsigned int v85;
v82 = 1 - -1;
v83 = -4 - 1;
v84 = 0 - 2;
v85 = v27 (v82, v83, v84);
history[history_index++] = (int)v85;
}
break;
case 12: 
return 1;
default: abort ();
}
}
}
}
