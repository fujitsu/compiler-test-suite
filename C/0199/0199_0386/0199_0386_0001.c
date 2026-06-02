#include <stdlib.h>
extern unsigned short v1 (unsigned char, signed short, signed char);
extern unsigned short (*v2) (unsigned char, signed short, signed char);
signed int v3 (signed short, signed short);
signed int (*v4) (signed short, signed short) = v3;
extern unsigned char v5 (void);
extern unsigned char (*v6) (void);
extern unsigned short v7 (signed short, signed int);
extern unsigned short (*v8) (signed short, signed int);
extern unsigned int v9 (signed short, unsigned short, signed char);
extern unsigned int (*v10) (signed short, unsigned short, signed char);
extern signed char v11 (unsigned int, signed char);
extern signed char (*v12) (unsigned int, signed char);
unsigned int v13 (void);
unsigned int (*v14) (void) = v13;
unsigned char v15 (unsigned int, unsigned short, unsigned short, signed int);
unsigned char (*v16) (unsigned int, unsigned short, unsigned short, signed int) = v15;
extern signed short v17 (signed int, unsigned int);
extern signed short (*v18) (signed int, unsigned int);
extern unsigned char v19 (void);
extern unsigned char (*v20) (void);
extern unsigned char v21 (signed short, signed int, signed int);
extern unsigned char (*v22) (signed short, signed int, signed int);
extern signed int v23 (signed int);
extern signed int (*v24) (signed int);
signed int v25 (signed int, unsigned short, signed short);
signed int (*v26) (signed int, unsigned short, signed short) = v25;
extern signed char v27 (unsigned int, unsigned short, signed short, unsigned int);
extern signed char (*v28) (unsigned int, unsigned short, signed short, unsigned int);
extern signed int v29 (signed short, signed int);
extern signed int (*v30) (signed short, signed int);
extern int history[];
extern int history_index;
extern int trace;
signed char v65 = 3;
signed char v64 = -4;
signed int v63 = -3;

signed int v25 (signed int v66, unsigned short v67, signed short v68)
{
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed int v71 = -2;
unsigned int v70 = 6U;
unsigned short v69 = 0;
trace++;
switch (trace)
{
case 5: 
return v71;
case 9: 
{
signed short v72;
signed int v73;
signed int v74;
v72 = -3 - -4;
v73 = 2 + v66;
v74 = v29 (v72, v73);
history[history_index++] = (int)v74;
}
break;
case 11: 
return v66;
default: abort ();
}
}
}
}

unsigned char v15 (unsigned int v75, unsigned short v76, unsigned short v77, signed int v78)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
history[history_index++] = (int)v78;
{
for (;;) {
signed int v81 = 2;
signed char v80 = -4;
unsigned int v79 = 0U;
trace++;
switch (trace)
{
case 1: 
{
signed int v82;
signed int v83;
v82 = v78 - v81;
v83 = v23 (v82);
history[history_index++] = (int)v83;
}
break;
case 3: 
{
unsigned char v84;
v84 = v19 ();
history[history_index++] = (int)v84;
}
break;
case 13: 
return 7;
default: abort ();
}
}
}
}

unsigned int v13 (void)
{
{
for (;;) {
unsigned short v87 = 5;
unsigned short v86 = 3;
signed char v85 = 2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed int v3 (signed short v88, signed short v89)
{
history[history_index++] = (int)v88;
history[history_index++] = (int)v89;
{
for (;;) {
signed short v92 = 2;
signed int v91 = 0;
unsigned char v90 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
