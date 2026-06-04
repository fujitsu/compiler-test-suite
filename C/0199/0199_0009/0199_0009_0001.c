#include <stdlib.h>
extern unsigned short v1 (unsigned short, signed char, signed char);
extern unsigned short (*v2) (unsigned short, signed char, signed char);
unsigned int v3 (signed short);
unsigned int (*v4) (signed short) = v3;
extern unsigned char v5 (unsigned int);
extern unsigned char (*v6) (unsigned int);
extern signed char v7 (void);
extern signed char (*v8) (void);
extern signed char v9 (unsigned short);
extern signed char (*v10) (unsigned short);
extern unsigned short v11 (unsigned char, signed int, signed char);
extern unsigned short (*v12) (unsigned char, signed int, signed char);
extern signed int v13 (unsigned short);
extern signed int (*v14) (unsigned short);
extern unsigned short v15 (void);
extern unsigned short (*v16) (void);
extern unsigned short v17 (unsigned short, signed short, signed int, signed short);
extern unsigned short (*v18) (unsigned short, signed short, signed int, signed short);
unsigned int v19 (void);
unsigned int (*v20) (void) = v19;
extern unsigned short v21 (signed char, signed int, unsigned short, signed char);
extern unsigned short (*v22) (signed char, signed int, unsigned short, signed char);
extern unsigned short v23 (unsigned char, signed int, signed char);
extern unsigned short (*v24) (unsigned char, signed int, signed char);
signed char v25 (unsigned char, signed char, unsigned int, signed char);
signed char (*v26) (unsigned char, signed char, unsigned int, signed char) = v25;
extern unsigned short v27 (unsigned short);
extern unsigned short (*v28) (unsigned short);
unsigned char v29 (signed char, unsigned int, signed char);
unsigned char (*v30) (signed char, unsigned int, signed char) = v29;
extern int history[];
extern int history_index;
extern int trace;
unsigned short v56 = 7;
unsigned char v55 = 5;
unsigned int v54 = 1U;

unsigned char v29 (signed char v57, unsigned int v58, signed char v59)
{
history[history_index++] = (int)v57;
history[history_index++] = (int)v58;
history[history_index++] = (int)v59;
{
for (;;) {
signed short v62 = -4;
unsigned int v61 = 3U;
signed char v60 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed char v25 (unsigned char v63, signed char v64, unsigned int v65, signed char v66)
{
history[history_index++] = (int)v63;
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
{
for (;;) {
signed char v69 = -1;
unsigned short v68 = 4;
unsigned int v67 = 2U;
trace++;
switch (trace)
{
case 7: 
{
unsigned short v70;
unsigned short v71;
v70 = 2 - v68;
v71 = v27 (v70);
history[history_index++] = (int)v71;
}
break;
case 9: 
{
unsigned short v72;
unsigned short v73;
v72 = 0 - 6;
v73 = v27 (v72);
history[history_index++] = (int)v73;
}
break;
case 11: 
return v69;
default: abort ();
}
}
}
}

unsigned int v19 (void)
{
{
for (;;) {
unsigned int v76 = 1U;
signed char v75 = 1;
signed int v74 = 3;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned int v3 (signed short v77)
{
history[history_index++] = (int)v77;
{
for (;;) {
signed int v80 = -4;
unsigned short v79 = 0;
unsigned short v78 = 5;
trace++;
switch (trace)
{
case 1: 
return 3U;
case 3: 
{
signed char v81;
v81 = v7 ();
history[history_index++] = (int)v81;
}
break;
case 15: 
return 6U;
default: abort ();
}
}
}
}
