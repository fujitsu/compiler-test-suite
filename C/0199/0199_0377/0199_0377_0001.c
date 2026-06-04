#include <stdlib.h>
extern unsigned short v3 (void);
extern unsigned short (*v4) (void);
extern unsigned int v5 (unsigned short, unsigned char, unsigned short, signed short);
extern unsigned int (*v6) (unsigned short, unsigned char, unsigned short, signed short);
extern signed short v7 (signed char, unsigned short);
extern signed short (*v8) (signed char, unsigned short);
signed short v9 (void);
signed short (*v10) (void) = v9;
unsigned char v11 (unsigned char, unsigned int, unsigned char, unsigned int);
unsigned char (*v12) (unsigned char, unsigned int, unsigned char, unsigned int) = v11;
extern unsigned int v13 (unsigned short, signed char);
extern unsigned int (*v14) (unsigned short, signed char);
extern unsigned char v17 (signed int, unsigned char);
extern unsigned char (*v18) (signed int, unsigned char);
extern signed short v19 (signed short, signed int, unsigned int, signed int);
extern signed short (*v20) (signed short, signed int, unsigned int, signed int);
signed char v21 (unsigned short, signed int, unsigned char, signed short);
signed char (*v22) (unsigned short, signed int, unsigned char, signed short) = v21;
extern signed short v23 (signed short);
extern signed short (*v24) (signed short);
extern unsigned short v25 (signed int, unsigned char);
extern unsigned short (*v26) (signed int, unsigned char);
signed short v27 (signed int, signed int, signed short, signed char);
signed short (*v28) (signed int, signed int, signed short, signed char) = v27;
extern signed char v29 (signed int, signed int, signed short);
extern signed char (*v30) (signed int, signed int, signed short);
extern int history[];
extern int history_index;
extern int trace;
signed int v64 = -4;
unsigned short v63 = 4;
signed short v62 = -1;

signed short v27 (signed int v65, signed int v66, signed short v67, signed char v68)
{
history[history_index++] = (int)v65;
history[history_index++] = (int)v66;
history[history_index++] = (int)v67;
history[history_index++] = (int)v68;
{
for (;;) {
signed short v71 = -4;
unsigned short v70 = 4;
signed short v69 = 1;
trace++;
switch (trace)
{
case 7: 
return v69;
case 9: 
return v71;
default: abort ();
}
}
}
}

signed char v21 (unsigned short v72, signed int v73, unsigned char v74, signed short v75)
{
history[history_index++] = (int)v72;
history[history_index++] = (int)v73;
history[history_index++] = (int)v74;
history[history_index++] = (int)v75;
{
for (;;) {
signed int v78 = -1;
unsigned char v77 = 5;
signed char v76 = -2;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

unsigned char v11 (unsigned char v79, unsigned int v80, unsigned char v81, unsigned int v82)
{
history[history_index++] = (int)v79;
history[history_index++] = (int)v80;
history[history_index++] = (int)v81;
history[history_index++] = (int)v82;
{
for (;;) {
unsigned int v85 = 2U;
unsigned char v84 = 7;
signed char v83 = 1;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}

signed short v9 (void)
{
{
for (;;) {
unsigned int v88 = 3U;
signed char v87 = 0;
unsigned short v86 = 7;
trace++;
switch (trace)
{
default: abort ();
}
}
}
}
