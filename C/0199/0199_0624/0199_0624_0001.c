#include <stdlib.h>
extern signed short v3 (unsigned short);
extern signed short (*v4) (unsigned short);
extern signed char v5 (unsigned char, signed short);
extern signed char (*v6) (unsigned char, signed short);
extern void v7 (void);
extern void (*v8) (void);
extern signed short v9 (signed char, signed int);
extern signed short (*v10) (signed char, signed int);
signed short v11 (unsigned int, signed int, unsigned short, signed int);
signed short (*v12) (unsigned int, signed int, unsigned short, signed int) = v11;
signed int v13 (signed int, signed short, unsigned int);
signed int (*v14) (signed int, signed short, unsigned int) = v13;
signed char v15 (signed short);
signed char (*v16) (signed short) = v15;
signed char v17 (void);
signed char (*v18) (void) = v17;
extern signed char v19 (void);
extern signed char (*v20) (void);
extern signed char v21 (unsigned short, signed short);
extern signed char (*v22) (unsigned short, signed short);
extern void v23 (signed char, unsigned char, signed char, signed int);
extern void (*v24) (signed char, unsigned char, signed char, signed int);
extern signed char v25 (unsigned int, signed char, unsigned short);
extern signed char (*v26) (unsigned int, signed char, unsigned short);
extern signed int v27 (void);
extern signed int (*v28) (void);
extern unsigned short v29 (signed int);
extern unsigned short (*v30) (signed int);
extern int history[];
extern int history_index;
extern int trace;
signed short v66 = -3;
signed short v65 = -2;
signed char v64 = -3;

signed char v17 (void)
{
{
for (;;) {
signed short v69 = -3;
unsigned int v68 = 1U;
unsigned short v67 = 5;
trace++;
switch (trace)
{
case 1: 
return 1;
case 4: 
return 3;
case 6: 
return -3;
case 8: 
return 1;
case 10: 
return 2;
default: abort ();
}
}
}
}

signed char v15 (signed short v70)
{
history[history_index++] = (int)v70;
{
for (;;) {
unsigned char v73 = 2;
signed short v72 = 3;
unsigned int v71 = 6U;
trace++;
switch (trace)
{
case 3: 
{
signed char v74;
v74 = v17 ();
history[history_index++] = (int)v74;
}
break;
case 5: 
{
signed char v75;
v75 = v17 ();
history[history_index++] = (int)v75;
}
break;
case 7: 
{
signed char v76;
v76 = v17 ();
history[history_index++] = (int)v76;
}
break;
case 9: 
{
signed char v77;
v77 = v17 ();
history[history_index++] = (int)v77;
}
break;
case 11: 
return -1;
default: abort ();
}
}
}
}

signed int v13 (signed int v78, signed short v79, unsigned int v80)
{
history[history_index++] = (int)v78;
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
{
for (;;) {
unsigned int v83 = 7U;
signed short v82 = 2;
unsigned char v81 = 6;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v11 (unsigned int v84, signed int v85, unsigned short v86, signed int v87)
{
history[history_index++] = (int)v84;
history[history_index++] = (int)v85;
history[history_index++] = (int)v86;
history[history_index++] = (int)v87;
{
for (;;) {
signed char v90 = -3;
signed short v89 = 0;
unsigned short v88 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
