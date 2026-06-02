#include <stdlib.h>
extern unsigned int v1 (void);
extern unsigned int (*v2) (void);
extern void v3 (signed short);
extern void (*v4) (signed short);
extern signed char v5 (signed char, signed char);
extern signed char (*v6) (signed char, signed char);
extern signed short v7 (signed short);
extern signed short (*v8) (signed short);
extern unsigned int v9 (unsigned int);
extern unsigned int (*v10) (unsigned int);
extern unsigned short v11 (unsigned int, unsigned char);
extern unsigned short (*v12) (unsigned int, unsigned char);
extern signed char v13 (signed short, signed int, signed char, signed char);
extern signed char (*v14) (signed short, signed int, signed char, signed char);
extern unsigned int v15 (unsigned char, unsigned int, unsigned int);
extern unsigned int (*v16) (unsigned char, unsigned int, unsigned int);
signed short v17 (unsigned short, signed int, signed int);
signed short (*v18) (unsigned short, signed int, signed int) = v17;
signed char v19 (unsigned char);
signed char (*v20) (unsigned char) = v19;
extern void v21 (signed char, signed short, signed int, signed char);
extern void (*v22) (signed char, signed short, signed int, signed char);
unsigned short v23 (signed char, unsigned char, signed int, unsigned char);
unsigned short (*v24) (signed char, unsigned char, signed int, unsigned char) = v23;
extern signed char v25 (void);
extern signed char (*v26) (void);
extern unsigned char v27 (signed short);
extern unsigned char (*v28) (signed short);
unsigned short v29 (unsigned char);
unsigned short (*v30) (unsigned char) = v29;
extern int history[];
extern int history_index;
extern int trace;
signed int v59 = -1;
unsigned short v58 = 4;
unsigned int v57 = 3U;

unsigned short v29 (unsigned char v60)
{
history[history_index++] = (int)v60;
{
for (;;) {
unsigned short v63 = 6;
signed short v62 = 2;
unsigned int v61 = 0U;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned short v23 (signed char v64, unsigned char v65, signed int v66, unsigned char v67)
{
history[history_index++] = (int)v64;
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
{
for (;;) {
signed int v70 = 1;
unsigned int v69 = 6U;
signed int v68 = -1;
trace++;
switch (trace)
{
case 3: 
return 2;
default: abort ();
}
}
}
}

signed char v19 (unsigned char v71)
{
history[history_index++] = (int)v71;
{
for (;;) {
unsigned short v74 = 7;
signed char v73 = 0;
signed short v72 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v17 (unsigned short v75, signed int v76, signed int v77)
{
history[history_index++] = (int)v75;
history[history_index++] = (int)v76;
history[history_index++] = (int)v77;
{
for (;;) {
unsigned int v80 = 3U;
signed char v79 = 0;
signed short v78 = -1;
trace++;
switch (trace)
{
case 7: 
{
signed char v81;
v81 = v25 ();
history[history_index++] = (int)v81;
}
break;
case 9: 
{
signed char v82;
v82 = v25 ();
history[history_index++] = (int)v82;
}
break;
case 11: 
return -1;
default: abort ();
}
}
}
}
