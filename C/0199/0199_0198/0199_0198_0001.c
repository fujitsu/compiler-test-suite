#include <stdlib.h>
signed int v3 (unsigned short, signed char, unsigned int);
signed int (*v4) (unsigned short, signed char, unsigned int) = v3;
extern unsigned int v5 (unsigned int, signed int, signed char);
extern unsigned int (*v6) (unsigned int, signed int, signed char);
extern signed int v7 (signed short, unsigned char);
extern signed int (*v8) (signed short, unsigned char);
extern signed short v9 (void);
extern signed short (*v10) (void);
extern signed char v11 (unsigned char);
extern signed char (*v12) (unsigned char);
extern unsigned int v13 (signed int, unsigned short, unsigned char, unsigned int);
extern unsigned int (*v14) (signed int, unsigned short, unsigned char, unsigned int);
unsigned short v15 (unsigned short, signed short, signed int);
unsigned short (*v16) (unsigned short, signed short, signed int) = v15;
extern void v17 (signed short);
extern void (*v18) (signed short);
extern unsigned int v19 (signed short, signed short);
extern unsigned int (*v20) (signed short, signed short);
signed short v21 (void);
signed short (*v22) (void) = v21;
extern signed short v23 (void);
extern signed short (*v24) (void);
extern unsigned short v25 (signed int, unsigned short);
extern unsigned short (*v26) (signed int, unsigned short);
unsigned short v27 (signed char);
unsigned short (*v28) (signed char) = v27;
extern void v29 (signed int, signed short, signed int, signed short);
extern void (*v30) (signed int, signed short, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v70 = 0;
signed short v69 = 0;
signed char v68 = -3;

unsigned short v27 (signed char v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
signed char v74 = -1;
signed char v73 = 1;
signed int v72 = 3;
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
signed int v77 = -2;
unsigned short v76 = 7;
signed int v75 = 3;
trace++;
switch (trace)
{
case 2: 
{
signed short v78;
v78 = 1 + -4;
v17 (v78);
}
break;
case 4: 
{
signed int v79;
unsigned short v80;
unsigned short v81;
v79 = v75 - v77;
v80 = v76 - 1;
v81 = v25 (v79, v80);
history[history_index++] = (int)v81;
}
break;
case 6: 
{
signed short v82;
v82 = 0 + -1;
v17 (v82);
}
break;
case 8: 
{
signed short v83;
v83 = -3 - 1;
v17 (v83);
}
break;
case 10: 
{
signed int v84;
unsigned short v85;
unsigned short v86;
v84 = v75 - v75;
v85 = v76 - 4;
v86 = v25 (v84, v85);
history[history_index++] = (int)v86;
}
break;
case 12: 
return 3;
default: abort ();
}
}
}
}

unsigned short v15 (unsigned short v87, signed short v88, signed int v89)
{
history[history_index++] = (int)v87;
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed int v92 = 2;
unsigned char v91 = 1;
signed char v90 = -3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (unsigned short v93, signed char v94, unsigned int v95)
{
history[history_index++] = (int)v93;
history[history_index++] = (int)v94;
history[history_index++] = (int)v95;
{
for (;;) {
unsigned int v98 = 2U;
signed int v97 = -2;
unsigned char v96 = 5;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
